import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:matrix_application/features/user/domain/entities/user.dart';

part 'login_state.freezed.dart';

@freezed
abstract class LoginFormData with _$LoginFormData {
  const factory LoginFormData({
    @Default('') String username,
    @Default('') String phoneNumber,
    @Default('') String matrixNumberText,
    @Default(false) bool isMatrixNumberLocked,
    String? usernameError,
    String? phoneNumberError,
    String? matrixNumberError,
    String? infoMessage,
  }) = _LoginFormData;
}

@freezed
sealed class LoginState with _$LoginState {
  const factory LoginState.editing(LoginFormData form) = LoginEditing;
  const factory LoginState.submitting(LoginFormData form) = LoginSubmitting;
  const factory LoginState.navigateHome(String phoneNumber, int matrixNumber) =
      LoginNavigateHome;
  const factory LoginState.navigateAlreadySubmitted(User user) =
      LoginNavigateAlreadySubmitted;
  const factory LoginState.submitFailure(LoginFormData form, String message) =
      LoginSubmitFailure;
}
