import 'package:flutter/material.dart';
import 'package:matrix_application/core/utils/color_band.dart';

/// Fixed VIBGYOR bands (plus a Pink overflow band past 35) used to paint
/// matrix grid cells.
///
/// These are deliberately NOT derived from [ColorScheme] — the grid must stay
/// recognizably Violet-to-Red (then Pink) in both light and dark mode
/// regardless of the app's dynamic theme, only the surrounding chrome adapts.
/// Every band uses a deep/saturated shade (not a pastel) so boxes read as
/// bold, "hard" colors against the app's white background.
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
      light: Color(0xFF6A1B9A),
      dark: Color(0xFF8E24AA),
      onColor: Colors.white,
    ),
    VibgyorBand(
      name: 'Indigo',
      light: Color(0xFF283593),
      dark: Color(0xFF3949AB),
      onColor: Colors.white,
    ),
    VibgyorBand(
      name: 'Blue',
      light: Color(0xFF1565C0),
      dark: Color(0xFF1E88E5),
      onColor: Colors.white,
    ),
    VibgyorBand(
      name: 'Green',
      light: Color(0xFF2E7D32),
      dark: Color(0xFF388E3C),
      onColor: Colors.white,
    ),
    VibgyorBand(
      name: 'Yellow',
      light: Color(0xFFF9A825),
      dark: Color(0xFFFBC02D),
      onColor: Colors.black87,
    ),
    VibgyorBand(
      name: 'Orange',
      light: Color(0xFFE65100),
      dark: Color(0xFFEF6C00),
      onColor: Colors.white,
    ),
    VibgyorBand(
      name: 'Red',
      light: Color(0xFFB71C1C),
      dark: Color(0xFFE53935),
      onColor: Colors.white,
    ),
    VibgyorBand(
      name: 'Pink',
      // Every box past 35 lands here (ColorBand.overflowIndex) — a distinct
      // color from Red, not a continuation of it.
      light: Color(0xFFC2185B),
      dark: Color(0xFFEC407A),
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
