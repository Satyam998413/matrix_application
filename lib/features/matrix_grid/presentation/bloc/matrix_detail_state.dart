import 'package:freezed_annotation/freezed_annotation.dart';

part 'matrix_detail_state.freezed.dart';

@freezed
sealed class MatrixDetailState with _$MatrixDetailState {
  const factory MatrixDetailState.initial() = MatrixDetailInitial;
  const factory MatrixDetailState.loading() = MatrixDetailLoading;
  const factory MatrixDetailState.loaded({
    required String username,
    required int matrixNumber,
    required Map<String, int> committedColors,
    DateTime? submittedAt,
  }) = MatrixDetailLoaded;
  const factory MatrixDetailState.error(String message) = MatrixDetailError;
}
