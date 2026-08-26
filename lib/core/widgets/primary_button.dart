import 'dart:io' show Platform;

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.isLoading = false,
  });

  final String label;
  final VoidCallback? onPressed;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    final child = isLoading
        ? const SizedBox(
            height: 20,
            width: 20,
            child: CircularProgressIndicator(strokeWidth: 2),
          )
        : Text(label);

    if (!kIsWeb && Platform.isIOS) {
      return SizedBox(
        width: double.infinity,
        height: 48,
        child: CupertinoButton.filled(
          onPressed: isLoading ? null : onPressed,
          child: child,
        ),
      );
    }

    return FilledButton(onPressed: isLoading ? null : onPressed, child: child);
  }
}
