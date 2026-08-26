import 'package:flutter/material.dart';

class SubmitConfirmationDialog extends StatelessWidget {
  const SubmitConfirmationDialog({super.key, required this.coloredBoxCount});

  final int coloredBoxCount;

  static Future<bool> show(
    BuildContext context, {
    required int coloredBoxCount,
  }) async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) =>
          SubmitConfirmationDialog(coloredBoxCount: coloredBoxCount),
    );
    return confirmed ?? false;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AlertDialog(
      icon: Container(
        width: 56,
        height: 56,
        decoration: BoxDecoration(
          color: theme.colorScheme.primaryContainer,
          shape: BoxShape.circle,
        ),
        child: Icon(
          Icons.send_rounded,
          color: theme.colorScheme.onPrimaryContainer,
          size: 26,
        ),
      ),
      title: const Text('Submit your matrix?'),
      content: Text(
        "You've colored $coloredBoxCount "
        "${coloredBoxCount == 1 ? 'box' : 'boxes'}. Once submitted, it "
        "can't be changed.",
        textAlign: TextAlign.center,
        style: theme.textTheme.bodyMedium?.copyWith(
          color: theme.colorScheme.onSurfaceVariant,
        ),
      ),
      actionsAlignment: MainAxisAlignment.spaceBetween,
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(false),
          child: const Text('Keep coloring'),
        ),
        FilledButton.icon(
          onPressed: () => Navigator.of(context).pop(true),
          icon: const Icon(Icons.check_rounded, size: 18),
          label: const Text('Submit'),
        ),
      ],
    );
  }
}
