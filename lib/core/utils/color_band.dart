/// Pure-Dart VIBGYOR band-index math, shared by the matrix_grid domain
/// algorithm (which must stay Flutter-free) and the presentation-layer
/// [VibgyorPalette] color lookup.
abstract class ColorBand {
  static const int boxesPerBand = 5;
  static const int vibgyorBands = 7;

  /// Index of the overflow band (Pink) — every box past 35 lands here.
  static const int overflowIndex = vibgyorBands;

  /// Boxes 1-35 map to the 7 VIBGYOR bands (5 each); anything past 35 is the
  /// distinct Pink overflow band, not a continuation of Red.
  static int indexForSequence(int oneBasedSequence) {
    if (oneBasedSequence > boxesPerBand * vibgyorBands) return overflowIndex;
    return (oneBasedSequence - 1) ~/ boxesPerBand;
  }
}
