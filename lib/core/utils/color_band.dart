/// Pure-Dart VIBGYOR band-index math, shared by the matrix_grid domain
/// algorithm (which must stay Flutter-free) and the presentation-layer
/// [VibgyorPalette] color lookup.
abstract class ColorBand {
  static const int boxesPerBand = 5;
  static const int totalBands = 7;

  /// Boxes past the last band clamp at the final band (no cycling) — matches
  /// the user's "35> all boxes color till [red]" requirement.
  static int indexForSequence(int oneBasedSequence) {
    final index = (oneBasedSequence - 1) ~/ boxesPerBand;
    return index > totalBands - 1 ? totalBands - 1 : index;
  }
}
