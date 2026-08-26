import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:matrix_application/features/user/domain/entities/user.dart';

part 'history_state.freezed.dart';

@freezed
sealed class HistoryState with _$HistoryState {
  const factory HistoryState.loading() = HistoryLoading;
  const factory HistoryState.loaded(List<User> users) = HistoryLoaded;
  const factory HistoryState.empty() = HistoryEmpty;
  const factory HistoryState.error(String message) = HistoryError;
}
