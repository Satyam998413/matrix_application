import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:matrix_application/core/di/injection.dart';
import 'package:matrix_application/core/utils/date_formatter.dart';
import 'package:matrix_application/core/widgets/error_state_view.dart';
import 'package:matrix_application/core/widgets/loading_view.dart';
import 'package:matrix_application/features/matrix_grid/presentation/bloc/matrix_detail_bloc.dart';
import 'package:matrix_application/features/matrix_grid/presentation/bloc/matrix_detail_event.dart';
import 'package:matrix_application/features/matrix_grid/presentation/bloc/matrix_detail_state.dart';
import 'package:matrix_application/features/matrix_grid/presentation/widgets/matrix_grid_view.dart';

class MatrixDetailScreen extends StatelessWidget {
  const MatrixDetailScreen({super.key, required this.phoneNumber});

  final String phoneNumber;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          getIt<MatrixDetailBloc>()
            ..add(MatrixDetailEvent.requested(phoneNumber)),
      child: const _MatrixDetailView(),
    );
  }
}

class _MatrixDetailView extends StatelessWidget {
  const _MatrixDetailView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Matrix detail')),
      body: SafeArea(
        child: BlocBuilder<MatrixDetailBloc, MatrixDetailState>(
          builder: (context, state) {
            return switch (state) {
              MatrixDetailInitial() ||
              MatrixDetailLoading() => const LoadingView(),
              MatrixDetailError(:final message) => ErrorStateView(
                message: message,
              ),
              MatrixDetailLoaded(
                :final username,
                :final matrixNumber,
                :final committedColors,
                :final submittedAt,
              ) =>
                SingleChildScrollView(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Text(
                        username,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      if (submittedAt != null)
                        Text(
                          'Submitted on ${DateFormatter.format(submittedAt)}',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      const SizedBox(height: 16),
                      AspectRatio(
                        aspectRatio: 1,
                        child: MatrixGridView(
                          matrixNumber: matrixNumber,
                          committedColors: committedColors,
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
