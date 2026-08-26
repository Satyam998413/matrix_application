import 'package:flutter/material.dart';
import 'package:matrix_application/core/theme/vibgyor_palette.dart';

/// A thin VIBGYOR gradient strip used as a branding accent on headers —
/// ties screens back to the app's core grid-coloring identity.
class VibgyorGradientBar extends StatelessWidget {
  const VibgyorGradientBar({super.key, this.height = 4});

  final double height;

  @override
  Widget build(BuildContext context) {
    final brightness = Theme.of(context).brightness;
    return Container(
      height: height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: VibgyorPalette.bands
              .map((band) => band.resolve(brightness))
              .toList(),
        ),
      ),
    );
  }
}
