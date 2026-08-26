import 'package:flutter/material.dart';
import 'package:matrix_application/core/utils/color_band.dart';

/// Fixed 7-color VIBGYOR bands used to paint matrix grid cells.
///
/// These are deliberately NOT derived from [ColorScheme] — the grid must stay
/// recognizably Violet-to-Red in both light and dark mode regardless of the
/// app's dynamic theme, only the surrounding chrome adapts.
class VibgyorBand {
  const VibgyorBand({
    required this.name,
    required this.light,
    required this.dark,
    required this.onColor,
  });

  final String name;
  final Color light;
  final Color dark;
  final Color onColor;

  Color resolve(Brightness brightness) =>
      brightness == Brightness.dark ? dark : light;
}

abstract class VibgyorPalette {
  static const List<VibgyorBand> bands = [
    VibgyorBand(
      name: 'Violet',
      light: Color(0xFF7C4DFF),
      dark: Color(0xFF9575CD),
      onColor: Colors.white,
    ),
    VibgyorBand(
      name: 'Indigo',
      light: Color(0xFF536DFE),
      dark: Color(0xFF7986CB),
      onColor: Colors.white,
    ),
    VibgyorBand(
      name: 'Blue',
      light: Color(0xFF2979FF),
      dark: Color(0xFF64B5F6),
      onColor: Colors.white,
    ),
    VibgyorBand(
      name: 'Green',
      light: Color(0xFF00C853),
      dark: Color(0xFF66BB6A),
      onColor: Colors.black87,
    ),
    VibgyorBand(
      name: 'Yellow',
      light: Color(0xFFFFD600),
      dark: Color(0xFFFFD54F),
      onColor: Colors.black87,
    ),
    VibgyorBand(
      name: 'Orange',
      light: Color(0xFFFF6D00),
      dark: Color(0xFFFFB74D),
      onColor: Colors.black87,
    ),
    VibgyorBand(
      name: 'Red',
      light: Color(0xFFFF1744),
      // Kept vivid (not the usual muted dark-mode pastel) since every box
      // past 35 clamps here — it must stay unmistakably "hard red".
      dark: Color(0xFFFF5252),
      onColor: Colors.white,
    ),
  ];

  static int bandIndexForSequence(int oneBasedSequence) =>
      ColorBand.indexForSequence(oneBasedSequence);

  static const Color blankCellLight = Color(0xFFF1F1F4);
  static const Color blankCellDark = Color(0xFF2A2C33);
  static const Color blankBorderLight = Color(0xFFDADCE3);
  static const Color blankBorderDark = Color(0xFF3E4049);
}
