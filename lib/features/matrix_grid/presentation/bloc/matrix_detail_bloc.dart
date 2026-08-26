import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:matrix_application/core/utils/result.dart';
import 'package:matrix_application/features/user/domain/usecases/lookup_user_by_phone.dart';

import 'matrix_detail_event.dart';
import 'matrix_detail_state.dart';

@injectable
class MatrixDetailBloc extends Bloc<MatrixDetailEvent, MatrixDetailState> {
  MatrixDetailBloc(this._lookupUserByPhone)
    : super(const MatrixDetailState.initial()) {
    on<MatrixDetailRequested>(_onRequested);
  }

  final LookupUserByPhone _lookupUserByPhone;

  Future<void> _onRequested(
    MatrixDetailRequested event,
    Emitter<MatrixDetailState> emit,
  ) async {
    emit(const MatrixDetailState.loading());
    final result = await _lookupUserByPhone(event.phoneNumber);
    switch (result) {
      case Success(value: final user?) when user.committedColors != null:
        emit(
          MatrixDetailState.loaded(
            username: user.username,
            matrixNumber: user.matrixNumber,
            committedColors: user.committedColors!,
            submittedAt: user.submittedAt,
          ),
        );
      case Success():
        emit(const MatrixDetailState.error('No submitted matrix found'));
      case ResultError(:final failure):
        emit(MatrixDetailState.error(failure.message));
    }
  }
}
