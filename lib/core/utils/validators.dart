abstract class Validators {
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
    // No range restriction by request — any positive whole number is
    // accepted as a grid size; only reject what can't build a grid at all.
    final parsed = int.tryParse(trimmed);
    if (parsed == null || parsed <= 0) {
      return 'Enter a valid number';
    }
    return null;
  }
}
