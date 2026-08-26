import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:matrix_application/core/utils/validators.dart';
import 'package:matrix_application/core/widgets/app_text_field.dart';
import 'package:matrix_application/features/auth/presentation/bloc/login_state.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
    required this.form,
    required this.onUsernameChanged,
    required this.onPhoneNumberChanged,
    required this.onMatrixNumberChanged,
  });

  final LoginFormData form;
  final ValueChanged<String> onUsernameChanged;
  final ValueChanged<String> onPhoneNumberChanged;
  final ValueChanged<String> onMatrixNumberChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        AppTextField(
          label: 'Username',
          icon: Icons.person_outline,
          initialValue: form.username,
          errorText: form.usernameError,
          onChanged: onUsernameChanged,
        ),
        const SizedBox(height: 16),
        AppTextField(
          label: 'Phone number',
          icon: Icons.phone_outlined,
          keyboardType: TextInputType.phone,
          initialValue: form.phoneNumber,
          errorText: form.phoneNumberError,
          onChanged: onPhoneNumberChanged,
          inputFormatters: [
            FilteringTextInputFormatter.digitsOnly,
            LengthLimitingTextInputFormatter(Validators.mobileNumberLength),
          ],
        ),
        const SizedBox(height: 16),
        AppTextField(
          // Keyed only on the lock flag (NOT on matrixNumberText) — keying on
          // the live text would remount the field on every keystroke and
          // drop focus after each digit. It only needs to remount once, when
          // a returning user's stored matrix number gets prefilled+locked.
          key: ValueKey('matrix-${form.isMatrixNumberLocked}'),
          label: 'Matrix number',
          icon: Icons.grid_on_outlined,
          keyboardType: TextInputType.number,
          enabled: !form.isMatrixNumberLocked,
          initialValue: form.matrixNumberText,
          errorText: form.matrixNumberError,
          helperText: form.infoMessage ?? 'Grid size, from 2 to 20',
          onChanged: onMatrixNumberChanged,
          // No length cap — the user can type any number of digits; the
          // 2-20 range is still enforced as a validation error on submit.
          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        ),
      ],
    );
  }
}
