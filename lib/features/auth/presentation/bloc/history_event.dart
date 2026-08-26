import 'package:freezed_annotation/freezed_annotation.dart';

part 'history_event.freezed.dart';

@freezed
sealed class HistoryEvent with _$HistoryEvent {
  const factory HistoryEvent.pageOpened() = HistoryPageOpened;
  const factory HistoryEvent.refreshRequested() = HistoryRefreshRequested;
}
