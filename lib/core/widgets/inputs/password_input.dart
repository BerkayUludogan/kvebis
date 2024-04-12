import 'package:flutter/material.dart';

class PasswordInput extends StatelessWidget {
  PasswordInput({
    required this.controller,
    required this.text,
    required this.onPressed,
    this.obscureText = false,
    this.isVisible = false,
    super.key,
  });
  TextEditingController controller;
  VoidCallback onPressed;
  String text;
  bool obscureText;
  bool isVisible;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: (value) => value!.isNotEmpty ? null : 'This field required',
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: text,
        icon: const Icon(Icons.lock),
        suffixIcon: IconButton(
          padding: EdgeInsets.zero,
          onPressed: onPressed,
          icon: Icon(
            isVisible ? Icons.visibility_off : Icons.visibility,
          ),
        ),
      ),
    );
  }
}
