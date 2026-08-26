import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:matrix_application/core/di/injection.dart';
import 'package:matrix_application/core/router/app_route.dart';
import 'package:matrix_application/core/widgets/empty_state_view.dart';
import 'package:matrix_application/core/widgets/error_state_view.dart';
import 'package:matrix_application/core/widgets/loading_view.dart';
import 'package:matrix_application/features/auth/presentation/bloc/history_bloc.dart';
import 'package:matrix_application/features/auth/presentation/bloc/history_event.dart';
import 'package:matrix_application/features/auth/presentation/bloc/history_state.dart';
import 'package:matrix_application/features/auth/presentation/widgets/history_user_card.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<HistoryBloc>()..add(const HistoryEvent.pageOpened()),
      child: const _HistoryView(),
    );
  }
}

class _HistoryView extends StatelessWidget {
  const _HistoryView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Submission history')),
      body: SafeArea(
        child: BlocBuilder<HistoryBloc, HistoryState>(
          builder: (context, state) {
            return switch (state) {
              HistoryLoading() => const LoadingView(),
              HistoryEmpty() => const EmptyStateView(
                message: 'No registrations yet',
              ),
              HistoryError(:final message) => ErrorStateView(
                message: message,
                onRetry: () => context.read<HistoryBloc>().add(
                  const HistoryEvent.refreshRequested(),
                ),
              ),
              HistoryLoaded(:final users) => RefreshIndicator(
                onRefresh: () async => context.read<HistoryBloc>().add(
                  const HistoryEvent.refreshRequested(),
                ),
                child: ListView.builder(
                  padding: const EdgeInsets.all(16),
                  itemCount: users.length,
                  itemBuilder: (context, index) {
                    final user = users[index];
                    return HistoryUserCard(
                      user: user,
                      onTap: () {
                        if (user.isSubmitted) {
                          context.push(
                            AppRoute.matrixDetailPathFor(user.phoneNumber),
                          );
                        } else {
                          ScaffoldMessenger.of(context)
                            ..hideCurrentSnackBar()
                            ..showSnackBar(
                              const SnackBar(
                                content: Text('Matrix not submitted yet'),
                              ),
                            );
                        }
                      },
                    );
                  },
                ),
              ),
            };
          },
        ),
      ),
    );
  }
}
