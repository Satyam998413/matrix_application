import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_event.freezed.dart';

@freezed
sealed class LoginEvent with _$LoginEvent {
  const factory LoginEvent.usernameChanged(String value) = LoginUsernameChanged;
  const factory LoginEvent.phoneNumberChanged(String value) =
      LoginPhoneNumberChanged;
  const factory LoginEvent.matrixNumberChanged(String value) =
      LoginMatrixNumberChanged;
  const factory LoginEvent.submitted() = LoginSubmitted;
}
