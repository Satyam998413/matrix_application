import 'package:freezed_annotation/freezed_annotation.dart';

part 'matrix_detail_event.freezed.dart';

@freezed
sealed class MatrixDetailEvent with _$MatrixDetailEvent {
  const factory MatrixDetailEvent.requested(String phoneNumber) =
      MatrixDetailRequested;
}
