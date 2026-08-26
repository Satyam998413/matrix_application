import 'package:flutter/material.dart';
import 'package:matrix_application/core/theme/app_colors.dart';

class StatusBadge extends StatelessWidget {
  const StatusBadge({super.key, required this.isSubmitted});

  final bool isSubmitted;

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final color = isSubmitted
        ? (isDark ? AppColors.submittedBadgeDark : AppColors.submittedBadge)
        : (isDark ? AppColors.pendingBadgeDark : AppColors.pendingBadge);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.15),
        borderRadius: BorderRadius.circular(999),
        border: Border.all(color: color),
      ),
      child: Text(
        isSubmitted ? 'Submitted' : 'Pending',
        style: Theme.of(context).textTheme.labelSmall?.copyWith(
          color: color,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
