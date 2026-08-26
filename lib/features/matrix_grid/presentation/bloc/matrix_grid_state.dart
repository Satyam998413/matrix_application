import 'package:freezed_annotation/freezed_annotation.dart';

part 'matrix_grid_state.freezed.dart';

enum SubmitStatus { idle, inFlight, success, failure }

@freezed
sealed class MatrixGridState with _$MatrixGridState {
  const factory MatrixGridState.initial() = MatrixGridInitial;
  const factory MatrixGridState.loading() = MatrixGridLoading;
  const factory MatrixGridState.loadFailure(String message) =
      MatrixGridLoadFailure;
  const factory MatrixGridState.ready({
    required String phoneNumber,
    required int matrixNumber,
    required Map<String, int> committedColors,
    required Map<String, int> currentSelectionLabels,
    required int selectionRows,
    required int selectionCols,
    @Default(SubmitStatus.idle) SubmitStatus submitStatus,
    String? submitError,
  }) = MatrixGridReady;
}
