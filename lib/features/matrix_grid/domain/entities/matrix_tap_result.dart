class MatrixTapResult {
  const MatrixTapResult({
    required this.committedColors,
    required this.currentSelectionLabels,
    required this.rows,
    required this.cols,
  });

  final Map<String, int> committedColors;
  final Map<String, int> currentSelectionLabels;
  final int rows;
  final int cols;

  int get totalBoxes => rows * cols;
}
