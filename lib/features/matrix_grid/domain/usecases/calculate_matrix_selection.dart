import 'package:injectable/injectable.dart';
import 'package:matrix_application/core/utils/color_band.dart';
import 'package:matrix_application/features/matrix_grid/domain/entities/cell_coordinate.dart';
import 'package:matrix_application/features/matrix_grid/domain/entities/matrix_tap_result.dart';

/// Pure algorithm — no Flutter/Hive import — implementing the rules
/// confirmed with the user:
///  1. Corner-anchored rectangle: a tap at (row, col) always selects (1,1)..(row,col).
///  2. Every cell INSIDE that rectangle is (re)colored fresh on every tap —
///     a later tap overwrites colors an earlier tap already set, each time.
///     Cells OUTSIDE the current rectangle are left untouched, so a bigger
///     earlier selection's colors stay "saved" wherever a smaller later tap
///     doesn't reach.
///  3. VIBGYOR by box number: a cell's band comes directly from its position
///     (1..rows*cols) within the CURRENT rectangle — box 1-5 is Violet, 6-10
///     Indigo, etc. — clamping at the last band past 35 (no cycling). Color
///     and the live label are the same number, deliberately: "box number" is
///     a single concept, not two separate counters.
@injectable
class CalculateMatrixSelection {
  MatrixTapResult call({
    required int row,
    required int col,
    required Map<String, int> committedColors,
  }) {
    final currentSelectionLabels = <String, int>{};
    final updatedColors = Map<String, int>.from(committedColors);
    var position = 0;

    for (var r = 1; r <= row; r++) {
      for (var c = 1; c <= col; c++) {
        position++;
        final key = CellCoordinate(r, c).toKey();
        currentSelectionLabels[key] = position;
        updatedColors[key] = ColorBand.indexForSequence(position);
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
