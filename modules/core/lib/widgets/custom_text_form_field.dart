import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String hint;
  const CustomTextFormField({
    super.key,
    required this.hint,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hint,
        contentPadding: const EdgeInsets.symmetric(horizontal: 16),
      ),
    );
  }
}
