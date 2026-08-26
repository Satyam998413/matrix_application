import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:matrix_application/core/utils/result.dart';
import 'package:matrix_application/core/utils/validators.dart';
import 'package:matrix_application/features/user/domain/usecases/lookup_user_by_phone.dart';
import 'package:matrix_application/features/user/domain/usecases/register_user.dart';

import 'login_event.dart';
import 'login_state.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc(this._lookupUserByPhone, this._registerUser)
    : super(const LoginState.editing(LoginFormData())) {
    on<LoginUsernameChanged>(_onUsernameChanged);
    on<LoginPhoneNumberChanged>(_onPhoneNumberChanged);
    on<LoginMatrixNumberChanged>(_onMatrixNumberChanged);
    on<LoginSubmitted>(_onSubmitted);
  }

  final LookupUserByPhone _lookupUserByPhone;
  final RegisterUser _registerUser;

  LoginFormData get _currentForm => switch (state) {
    LoginEditing(:final form) => form,
    LoginSubmitting(:final form) => form,
    LoginSubmitFailure(:final form) => form,
    _ => const LoginFormData(),
  };

  void _onUsernameChanged(
    LoginUsernameChanged event,
    Emitter<LoginState> emit,
  ) {
    emit(
      LoginState.editing(
        _currentForm.copyWith(username: event.value, usernameError: null),
      ),
    );
  }

  void _onPhoneNumberChanged(
    LoginPhoneNumberChanged event,
    Emitter<LoginState> emit,
  ) {
    emit(
      LoginState.editing(
        _currentForm.copyWith(phoneNumber: event.value, phoneNumberError: null),
      ),
    );
  }

  void _onMatrixNumberChanged(
    LoginMatrixNumberChanged event,
    Emitter<LoginState> emit,
  ) {
    emit(
      LoginState.editing(
        _currentForm.copyWith(
          matrixNumberText: event.value,
          matrixNumberError: null,
        ),
      ),
    );
  }

  Future<void> _onSubmitted(
    LoginSubmitted event,
    Emitter<LoginState> emit,
  ) async {
    final form = _currentForm;
    final usernameError = Validators.username(form.username);
    final phoneNumberError = Validators.phoneNumber(form.phoneNumber);
    final matrixNumberError = form.isMatrixNumberLocked
        ? null
        : Validators.matrixNumber(form.matrixNumberText);

    if (usernameError != null ||
        phoneNumberError != null ||
        matrixNumberError != null) {
      emit(
        LoginState.editing(
          form.copyWith(
            usernameError: usernameError,
            phoneNumberError: phoneNumberError,
            matrixNumberError: matrixNumberError,
          ),
        ),
      );
      return;
    }

    emit(LoginState.submitting(form));

    final lookupResult = await _lookupUserByPhone(form.phoneNumber);
    switch (lookupResult) {
      case Success(value: final existingUser):
        if (existingUser == null) {
          final registerResult = await _registerUser(
            RegisterUserParams(
              phoneNumber: form.phoneNumber,
              username: form.username,
              matrixNumber: int.parse(form.matrixNumberText),
            ),
          );
          switch (registerResult) {
            case Success(value: final user):
              emit(
                LoginState.navigateHome(user.phoneNumber, user.matrixNumber),
              );
            case ResultError(:final failure):
              emit(LoginState.submitFailure(form, failure.message));
          }
        } else if (existingUser.isSubmitted) {
          emit(LoginState.navigateAlreadySubmitted(existingUser));
        } else {
          // Grid size is fixed at first registration — a returning,
          // not-yet-submitted user's typed matrix number is intentionally
          // overridden by the stored value rather than silently accepted.
          emit(
            LoginState.editing(
              form.copyWith(
                matrixNumberText: existingUser.matrixNumber.toString(),
                isMatrixNumberLocked: true,
                infoMessage: 'Using your saved matrix size',
              ),
            ),
          );
          emit(
            LoginState.navigateHome(
              existingUser.phoneNumber,
              existingUser.matrixNumber,
            ),
          );
        }
      case ResultError(:final failure):
        emit(LoginState.submitFailure(form, failure.message));
    }
  }
}
