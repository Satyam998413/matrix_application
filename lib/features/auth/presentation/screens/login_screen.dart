import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:matrix_application/core/di/injection.dart';
import 'package:matrix_application/core/router/app_route.dart';
import 'package:matrix_application/core/theme/app_dimens.dart';
import 'package:matrix_application/core/widgets/primary_button.dart';
import 'package:matrix_application/core/widgets/vibgyor_gradient_bar.dart';
import 'package:matrix_application/features/auth/presentation/bloc/login_bloc.dart';
import 'package:matrix_application/features/auth/presentation/bloc/login_event.dart';
import 'package:matrix_application/features/auth/presentation/bloc/login_state.dart';
import 'package:matrix_application/features/auth/presentation/widgets/login_form.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<LoginBloc>(),
      child: const _LoginView(),
    );
  }
}

class _LoginView extends StatelessWidget {
  const _LoginView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Matrix'),
        actions: [
          TextButton(
            onPressed: () => context.push(AppRoute.historyPath),
            child: const Text('View history'),
          ),
        ],
      ),
      body: BlocConsumer<LoginBloc, LoginState>(
        listener: (context, state) {
          switch (state) {
            case LoginNavigateHome(:final phoneNumber):
              context.go(AppRoute.homePathFor(phoneNumber));
            case LoginNavigateAlreadySubmitted(:final user):
              context.go(AppRoute.alreadySubmittedPath, extra: user);
            case LoginSubmitFailure(:final message):
              ScaffoldMessenger.of(context)
                ..hideCurrentSnackBar()
                ..showSnackBar(SnackBar(content: Text(message)));
            case LoginEditing():
            case LoginSubmitting():
          }
        },
        builder: (context, state) {
          final form = switch (state) {
            LoginEditing(:final form) => form,
            LoginSubmitting(:final form) => form,
            LoginSubmitFailure(:final form) => form,
            _ => null,
          };
          final isSubmitting = state is LoginSubmitting;

          if (form == null) {
            return const SizedBox.shrink();
          }

          final theme = Theme.of(context);
          return SafeArea(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(AppSpacing.lg),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    width: 56,
                    height: 56,
                    decoration: BoxDecoration(
                      color: theme.colorScheme.primaryContainer,
                      borderRadius: BorderRadius.circular(AppRadius.lg),
                    ),
                    child: Icon(
                      Icons.grid_on_rounded,
                      color: theme.colorScheme.onPrimaryContainer,
                      size: 28,
                    ),
                  ),
                  const SizedBox(height: AppSpacing.md),
                  Text('Welcome', style: theme.textTheme.headlineSmall),
                  const SizedBox(height: 4),
                  Text(
                    'Enter your details to start or resume your matrix.',
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: theme.colorScheme.onSurfaceVariant,
                    ),
                  ),
                  const SizedBox(height: AppSpacing.lg),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(AppSpacing.md),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(AppRadius.sm),
                        child: Column(
                          children: [
                            const VibgyorGradientBar(),
                            const SizedBox(height: AppSpacing.md),
                            LoginForm(
                              form: form,
                              onUsernameChanged: (v) => context
                                  .read<LoginBloc>()
                                  .add(LoginEvent.usernameChanged(v)),
                              onPhoneNumberChanged: (v) => context
                                  .read<LoginBloc>()
                                  .add(LoginEvent.phoneNumberChanged(v)),
                              onMatrixNumberChanged: (v) => context
                                  .read<LoginBloc>()
                                  .add(LoginEvent.matrixNumberChanged(v)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: AppSpacing.lg),
                  PrimaryButton(
                    label: 'Continue',
                    isLoading: isSubmitting,
                    onPressed: isSubmitting
                        ? null
                        : () => context.read<LoginBloc>().add(
                            const LoginEvent.submitted(),
                          ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
