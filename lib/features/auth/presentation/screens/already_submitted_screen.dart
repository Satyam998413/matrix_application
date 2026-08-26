import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:matrix_application/core/router/app_route.dart';
import 'package:matrix_application/core/utils/date_formatter.dart';
import 'package:matrix_application/core/widgets/primary_button.dart';
import 'package:matrix_application/features/user/domain/entities/user.dart';

class AlreadySubmittedScreen extends StatelessWidget {
  const AlreadySubmittedScreen({super.key, required this.user});

  final User user;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.check_circle_outline,
                  size: 64,
                  color: theme.colorScheme.primary,
                ),
                const SizedBox(height: 16),
                Text(
                  "You've already submitted your task",
                  textAlign: TextAlign.center,
                  style: theme.textTheme.headlineSmall,
                ),
                const SizedBox(height: 8),
                Text(
                  '${user.username} · ${user.matrixNumber}×${user.matrixNumber}',
                  style: theme.textTheme.bodyMedium,
                ),
                if (user.submittedAt != null) ...[
                  const SizedBox(height: 4),
                  Text(
                    'Submitted on ${DateFormatter.format(user.submittedAt!)}',
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: theme.colorScheme.outline,
                    ),
                  ),
                ],
                const SizedBox(height: 24),
                PrimaryButton(
                  label: 'Back to login',
                  onPressed: () => context.go(AppRoute.loginPath),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
