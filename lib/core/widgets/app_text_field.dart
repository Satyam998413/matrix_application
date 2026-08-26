import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    super.key,
    required this.label,
    required this.onChanged,
    this.errorText,
    this.icon,
    this.keyboardType,
    this.enabled = true,
    this.helperText,
    this.initialValue,
    this.inputFormatters,
  });

  final String label;
  final ValueChanged<String> onChanged;
  final String? errorText;
  final IconData? icon;
  final TextInputType? keyboardType;
  final bool enabled;
  final String? helperText;
  final String? initialValue;
  final List<TextInputFormatter>? inputFormatters;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: initialValue,
      enabled: enabled,
      keyboardType: keyboardType,
      inputFormatters: inputFormatters,
      onChanged: onChanged,
      decoration: InputDecoration(
        labelText: label,
        errorText: errorText,
        helperText: helperText,
        prefixIcon: icon == null ? null : Icon(icon),
      ),
    );
  }
}
