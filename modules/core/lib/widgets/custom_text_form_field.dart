import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String hint;
  final Color? colorTheme;
  final TextEditingController? controller;
  final String? Function(String?)? validator;

  const CustomTextFormField({
    super.key,
    required this.hint,
    this.colorTheme,
    this.controller,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      decoration: InputDecoration(
        hintText: hint,
        contentPadding: const EdgeInsets.symmetric(horizontal: 16),
        focusedBorder: colorTheme != null
            ? OutlineInputBorder(
                borderSide: BorderSide(color: colorTheme!, width: 2),
                borderRadius: BorderRadius.circular(8),
              )
            : null,
        enabledBorder: colorTheme != null
            ? OutlineInputBorder(
                borderSide: BorderSide(color: colorTheme!, width: 2),
                borderRadius: BorderRadius.circular(8),
              )
            : null,
        border: colorTheme != null
            ? OutlineInputBorder(
                borderSide: BorderSide(color: colorTheme!, width: 2),
                borderRadius: BorderRadius.circular(8),
              )
            : null,
      ),
    );
  }
}
