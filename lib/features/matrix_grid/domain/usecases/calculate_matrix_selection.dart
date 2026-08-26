import 'package:injectable/injectable.dart';
import 'package:matrix_application/core/utils/color_band.dart';
import 'package:matrix_application/features/matrix_grid/domain/entities/cell_coordinate.dart';
import 'package:matrix_application/features/matrix_grid/domain/entities/matrix_tap_result.dart';

/// Pure algorithm — no Flutter/Hive import — implementing the three rules
/// confirmed with the user:
///  1. Corner-anchored rectangle: a tap at (row, col) always selects (1,1)..(row,col).
///  2. Additive union, first-selection-wins: a cell already colored by an
///     earlier tap keeps its color; only still-blank cells get newly colored.
///  3. VIBGYOR clamp: the color-sequence counter only advances for newly
///     colored cells, and bands clamp at the last color past 35 (no cycling).
///
/// The live number-label overlay is a separate concern from persisted color:
/// every cell in the tapped rectangle gets a label (even if already colored),
/// so a smaller selection nested entirely inside an earlier larger one still
/// visibly shows its own position numbers with no effect on color.
@injectable
class CalculateMatrixSelection {
  MatrixTapResult call({
    required int row,
    required int col,
    required Map<String, int> committedColors,
  }) {
    final currentSelectionLabels = <String, int>{};
    final updatedColors = Map<String, int>.from(committedColors);
    var colorSeq = 0;
    var position = 0;

    for (var r = 1; r <= row; r++) {
      for (var c = 1; c <= col; c++) {
        position++;
        final key = CellCoordinate(r, c).toKey();
        currentSelectionLabels[key] = position;

        if (!updatedColors.containsKey(key)) {
          colorSeq++;
          updatedColors[key] = ColorBand.indexForSequence(colorSeq);
        }
      }
    }

    return MatrixTapResult(
      committedColors: updatedColors,
      currentSelectionLabels: currentSelectionLabels,
      rows: row,
      cols: col,
    );
  }
}
