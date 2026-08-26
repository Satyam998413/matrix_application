abstract class Validators {
  static const int minMatrixNumber = 2;
  static const int maxMatrixNumber = 20;
  static const int mobileNumberLength = 10;

  static String? username(String value) {
    if (value.trim().isEmpty) return 'Enter your name';
    return null;
  }

  static String? phoneNumber(String value) {
    final digits = value.replaceAll(RegExp(r'\D'), '');
    if (digits.isEmpty) return 'Enter your phone number';
    // Standard 10-digit mobile number starting 6-9 (landlines/short codes
    // aren't valid here — this app only ever needs one mobile per user).
    if (!RegExp(r'^[6-9]\d{9}$').hasMatch(digits)) {
      return 'Enter a valid $mobileNumberLength-digit mobile number';
    }
    return null;
  }

  static String? matrixNumber(String value) {
    final trimmed = value.trim();
    if (trimmed.isEmpty) return 'Enter a matrix number';
    final parsed = int.tryParse(trimmed);
    if (parsed == null ||
        parsed < minMatrixNumber ||
        parsed > maxMatrixNumber) {
      return 'Enter a number between $minMatrixNumber and $maxMatrixNumber';
    }
    return null;
  }
}
