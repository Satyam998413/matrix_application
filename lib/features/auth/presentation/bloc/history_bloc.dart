import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:matrix_application/core/usecases/use_case.dart';
import 'package:matrix_application/core/utils/result.dart';
import 'package:matrix_application/features/user/domain/usecases/get_all_users.dart';

import 'history_event.dart';
import 'history_state.dart';

@injectable
class HistoryBloc extends Bloc<HistoryEvent, HistoryState> {
  HistoryBloc(this._getAllUsers) : super(const HistoryState.loading()) {
    on<HistoryPageOpened>(_onLoad);
    on<HistoryRefreshRequested>(_onLoad);
  }

  final GetAllUsers _getAllUsers;

  Future<void> _onLoad(HistoryEvent event, Emitter<HistoryState> emit) async {
    emit(const HistoryState.loading());
    final result = await _getAllUsers(const NoParams());
    switch (result) {
      case Success(value: final users):
        emit(
          users.isEmpty
              ? const HistoryState.empty()
              : HistoryState.loaded(users),
        );
      case ResultError(:final failure):
        emit(HistoryState.error(failure.message));
    }
  }
}
