import 'package:flutter/material.dart';
import 'package:matrix_application/features/matrix_grid/domain/entities/cell_coordinate.dart';
import 'package:matrix_application/features/matrix_grid/presentation/widgets/matrix_cell.dart';

/// Reusable N×N renderer shared by Home (interactive) and Matrix Detail
/// (read-only — pass no [onCellTap] and an empty [currentSelectionLabels]).
///
/// Cells never shrink below [minCellSize] — a large matrixNumber on a small
/// phone gets a pannable grid instead of boxes too small to tap with a
/// fingertip. Always wrapped in [InteractiveViewer] (both axes) rather than
/// only when the fitted size drops below the minimum — a "fits exactly"
/// computation can be a fraction of a pixel off in practice, and without a
/// scroll fallback that clips the last row/column instead of just panning
/// past it.
class MatrixGridView extends StatelessWidget {
  const MatrixGridView({
    super.key,
    required this.matrixNumber,
    required this.committedColors,
    this.currentSelectionLabels = const {},
    this.onCellTap,
  });

  static const double minCellSize = 44;
  static const double cellSpacing = 2;

  final int matrixNumber;
  final Map<String, int> committedColors;
  final Map<String, int> currentSelectionLabels;
  final void Function(int row, int col)? onCellTap;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final available = constraints.biggest.shortestSide;
        final fittedCellSize =
            (available - cellSpacing * (matrixNumber - 1)) / matrixNumber;
        final cellSize = fittedCellSize < minCellSize
            ? minCellSize
            : fittedCellSize;
        final gridSide =
            cellSize * matrixNumber + cellSpacing * (matrixNumber - 1);

        final grid = SizedBox(
          width: gridSide,
          height: gridSide,
          child: GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: matrixNumber,
              mainAxisSpacing: cellSpacing,
              crossAxisSpacing: cellSpacing,
            ),
            itemCount: matrixNumber * matrixNumber,
            itemBuilder: (context, index) {
              final row = (index ~/ matrixNumber) + 1;
              final col = (index % matrixNumber) + 1;
              final key = CellCoordinate(row, col).toKey();
              return MatrixCell(
                row: row,
                col: col,
                bandIndex: committedColors[key],
                label: currentSelectionLabels[key],
                onTap: onCellTap == null ? null : () => onCellTap!(row, col),
              );
            },
          ),
        );

        return InteractiveViewer(
          constrained: false,
          minScale: 1,
          maxScale: 1,
          boundaryMargin: const EdgeInsets.all(24),
          child: grid,
        );
      },
    );
  }
}
