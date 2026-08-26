import 'package:flutter/material.dart';
import 'package:matrix_application/core/theme/app_dimens.dart';

class SelectionSummaryBar extends StatelessWidget {
  const SelectionSummaryBar({
    super.key,
    required this.rows,
    required this.cols,
  });

  final int rows;
  final int cols;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final hasSelection = rows > 0 && cols > 0;
    final text = hasSelection
        ? '$rows × $cols = ${rows * cols} boxes'
        : 'Tap a box to start coloring';

    return Align(
      child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 200),
        child: Container(
          key: ValueKey(text),
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.md,
            vertical: AppSpacing.sm,
          ),
          decoration: BoxDecoration(
            color: hasSelection
                ? theme.colorScheme.primaryContainer
                : theme.colorScheme.surfaceContainerHighest,
            borderRadius: BorderRadius.circular(AppRadius.pill),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                hasSelection ? Icons.grid_on_rounded : Icons.touch_app_outlined,
                size: 16,
                color: hasSelection
                    ? theme.colorScheme.onPrimaryContainer
                    : theme.colorScheme.onSurfaceVariant,
              ),
              const SizedBox(width: AppSpacing.xs),
              Text(
                text,
                style: theme.textTheme.labelLarge?.copyWith(
                  color: hasSelection
                      ? theme.colorScheme.onPrimaryContainer
                      : theme.colorScheme.onSurfaceVariant,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
