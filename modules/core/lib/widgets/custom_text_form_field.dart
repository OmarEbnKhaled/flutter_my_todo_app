import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String hint;
  final Color? colorTheme;
  const CustomTextFormField({
    super.key,
    required this.hint,
    this.colorTheme,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
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
