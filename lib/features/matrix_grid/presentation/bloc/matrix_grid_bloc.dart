import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:matrix_application/core/utils/result.dart';
import 'package:matrix_application/features/matrix_grid/domain/usecases/calculate_matrix_selection.dart';
import 'package:matrix_application/features/matrix_grid/domain/usecases/get_grid_config_for_user.dart';
import 'package:matrix_application/features/user/domain/usecases/submit_user_matrix.dart';

import 'matrix_grid_event.dart';
import 'matrix_grid_state.dart';

@injectable
class MatrixGridBloc extends Bloc<MatrixGridEvent, MatrixGridState> {
  MatrixGridBloc(
    this._getGridConfigForUser,
    this._calculateMatrixSelection,
    this._submitUserMatrix,
  ) : super(const MatrixGridState.initial()) {
    on<MatrixGridStarted>(_onStarted);
    on<MatrixGridCellTapped>(_onCellTapped);
    on<MatrixGridSubmitted>(_onSubmitted);
  }

  final GetGridConfigForUser _getGridConfigForUser;
  final CalculateMatrixSelection _calculateMatrixSelection;
  final SubmitUserMatrix _submitUserMatrix;

  Future<void> _onStarted(
    MatrixGridStarted event,
    Emitter<MatrixGridState> emit,
  ) async {
    emit(const MatrixGridState.loading());
    final result = await _getGridConfigForUser(event.phoneNumber);
    switch (result) {
      case Success(value: final user):
        // Grid always starts blank — Home is only ever reached for a
        // not-yet-submitted user, and nothing persists mid-selection.
        emit(
          MatrixGridState.ready(
            phoneNumber: user.phoneNumber,
            matrixNumber: user.matrixNumber,
            committedColors: const {},
            currentSelectionLabels: const {},
            selectionRows: 0,
            selectionCols: 0,
          ),
        );
      case ResultError(:final failure):
        emit(MatrixGridState.loadFailure(failure.message));
    }
  }

  void _onCellTapped(
    MatrixGridCellTapped event,
    Emitter<MatrixGridState> emit,
  ) {
    final current = state;
    if (current is! MatrixGridReady) return;

    final result = _calculateMatrixSelection(
      row: event.row,
      col: event.col,
      committedColors: current.committedColors,
    );

    emit(
      current.copyWith(
        committedColors: result.committedColors,
        currentSelectionLabels: result.currentSelectionLabels,
        selectionRows: result.rows,
        selectionCols: result.cols,
      ),
    );
  }

  Future<void> _onSubmitted(
    MatrixGridSubmitted event,
    Emitter<MatrixGridState> emit,
  ) async {
    final current = state;
    if (current is! MatrixGridReady) return;

    emit(
      current.copyWith(submitStatus: SubmitStatus.inFlight, submitError: null),
    );

    final result = await _submitUserMatrix(
      SubmitUserMatrixParams(
        phoneNumber: current.phoneNumber,
        committedColors: current.committedColors,
      ),
    );

    switch (result) {
      case Success():
        emit(current.copyWith(submitStatus: SubmitStatus.success));
      case ResultError(:final failure):
        // committedColors is intentionally preserved so the user can retry
        // Submit without losing their work.
        emit(
          current.copyWith(
            submitStatus: SubmitStatus.failure,
            submitError: failure.message,
          ),
        );
    }
  }
}
