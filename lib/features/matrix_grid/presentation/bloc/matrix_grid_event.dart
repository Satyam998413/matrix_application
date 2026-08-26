import 'package:freezed_annotation/freezed_annotation.dart';

part 'matrix_grid_event.freezed.dart';

@freezed
sealed class MatrixGridEvent with _$MatrixGridEvent {
  const factory MatrixGridEvent.started(String phoneNumber) = MatrixGridStarted;
  const factory MatrixGridEvent.cellTapped(int row, int col) =
      MatrixGridCellTapped;
  const factory MatrixGridEvent.submitted() = MatrixGridSubmitted;
}
