import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:matrix_application/core/di/injection.dart';
import 'package:matrix_application/core/router/app_route.dart';
import 'package:matrix_application/core/theme/app_dimens.dart';
import 'package:matrix_application/core/widgets/error_state_view.dart';
import 'package:matrix_application/core/widgets/loading_view.dart';
import 'package:matrix_application/core/widgets/primary_button.dart';
import 'package:matrix_application/features/matrix_grid/presentation/bloc/matrix_grid_bloc.dart';
import 'package:matrix_application/features/matrix_grid/presentation/bloc/matrix_grid_event.dart';
import 'package:matrix_application/features/matrix_grid/presentation/bloc/matrix_grid_state.dart';
import 'package:matrix_application/features/matrix_grid/presentation/widgets/matrix_grid_view.dart';
import 'package:matrix_application/features/matrix_grid/presentation/widgets/selection_summary_bar.dart';
import 'package:matrix_application/features/matrix_grid/presentation/widgets/submit_confirmation_dialog.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.phoneNumber});

  final String phoneNumber;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          getIt<MatrixGridBloc>()..add(MatrixGridEvent.started(phoneNumber)),
      child: const _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  Future<void> _onSubmitPressed(
    BuildContext context,
    int coloredBoxCount,
  ) async {
    final confirmed = await SubmitConfirmationDialog.show(
      context,
      coloredBoxCount: coloredBoxCount,
    );
    if (confirmed && context.mounted) {
      context.read<MatrixGridBloc>().add(const MatrixGridEvent.submitted());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Your matrix')),
      body: SafeArea(
        child: BlocConsumer<MatrixGridBloc, MatrixGridState>(
          listener: (context, state) {
            if (state is MatrixGridReady) {
              if (state.submitStatus == SubmitStatus.success) {
                context.go(AppRoute.loginPath);
              } else if (state.submitStatus == SubmitStatus.failure &&
                  state.submitError != null) {
                ScaffoldMessenger.of(context)
                  ..hideCurrentSnackBar()
                  ..showSnackBar(SnackBar(content: Text(state.submitError!)));
              }
            }
          },
          builder: (context, state) {
            return switch (state) {
              MatrixGridInitial() || MatrixGridLoading() => const LoadingView(),
              MatrixGridLoadFailure(:final message) => ErrorStateView(
                message: message,
              ),
              MatrixGridReady(
                :final matrixNumber,
                :final committedColors,
                :final currentSelectionLabels,
                :final selectionRows,
                :final selectionCols,
                :final submitStatus,
              ) =>
                SingleChildScrollView(
                  // A plain (non-Expanded) square driven by screen WIDTH, not
                  // whatever vertical space happens to be left over — so the
                  // grid keeps a consistent minimum size instead of shrinking
                  // on short screens. If everything doesn't fit, the page
                  // scrolls rather than squeezing boxes below a tappable size.
                  padding: const EdgeInsets.all(AppSpacing.md),
                  child: Column(
                    children: [
                      SelectionSummaryBar(
                        rows: selectionRows,
                        cols: selectionCols,
                      ),
                      const SizedBox(height: AppSpacing.md),
                      AspectRatio(
                        aspectRatio: 1,
                        child: Container(
                          padding: const EdgeInsets.all(AppSpacing.sm),
                          decoration: BoxDecoration(
                            color: Theme.of(
                              context,
                            ).colorScheme.surfaceContainerHigh,
                            borderRadius: BorderRadius.circular(AppRadius.lg),
                          ),
                          child: MatrixGridView(
                            matrixNumber: matrixNumber,
                            committedColors: committedColors,
                            currentSelectionLabels: currentSelectionLabels,
                            onCellTap: (row, col) => context
                                .read<MatrixGridBloc>()
                                .add(MatrixGridEvent.cellTapped(row, col)),
                          ),
                        ),
                      ),
                      const SizedBox(height: AppSpacing.md),
                      PrimaryButton(
                        label: 'Submit',
                        isLoading: submitStatus == SubmitStatus.inFlight,
                        onPressed: committedColors.isEmpty
                            ? null
                            : () => _onSubmitPressed(
                                context,
                                committedColors.length,
                              ),
                      ),
                    ],
                  ),
                ),
            };
          },
        ),
      ),
    );
  }
}
