import 'package:flutter/material.dart';

class GoogleSignInUpBtn extends StatelessWidget {
  final String label;
  final void Function()? onPressed;

  const GoogleSignInUpBtn({
    super.key,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      icon: Image.asset(
        'assets/icons/google_icon.png',
        height: 24,
        width: 24,
      ),
      label: Text(
        label,
        style: const TextStyle(color: Colors.black),
      ),
      style: const ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(Colors.white),
      ),
    );
  }
}
