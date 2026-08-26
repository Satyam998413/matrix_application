import 'package:flutter/material.dart';
import 'package:matrix_application/core/theme/vibgyor_palette.dart';

class MatrixCell extends StatelessWidget {
  const MatrixCell({
    super.key,
    required this.row,
    required this.col,
    required this.bandIndex,
    required this.label,
    this.onTap,
  });

  final int row;
  final int col;
  final int? bandIndex;
  final int? label;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final brightness = Theme.of(context).brightness;
    final band = bandIndex == null ? null : VibgyorPalette.bands[bandIndex!];
    final fillColor =
        band?.resolve(brightness) ??
        (brightness == Brightness.dark
            ? VibgyorPalette.blankCellDark
            : VibgyorPalette.blankCellLight);
    final borderColor = brightness == Brightness.dark
        ? VibgyorPalette.blankBorderDark
        : VibgyorPalette.blankBorderLight;

    return Semantics(
      label:
          'Row $row, Column $col'
          '${band != null ? ', ${band.name}' : ''}'
          '${label != null ? ', position $label' : ''}',
      button: onTap != null,
      child: GestureDetector(
        onTap: onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 180),
          decoration: BoxDecoration(
            color: fillColor,
            border: Border.all(color: borderColor),
            borderRadius: BorderRadius.circular(4),
          ),
          child: label == null
              ? null
              : Center(
                  child: Text(
                    '$label',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w600,
                      color:
                          band?.onColor ??
                          Theme.of(context).colorScheme.onSurface,
                    ),
                  ),
                ),
        ),
      ),
    );
  }
}
