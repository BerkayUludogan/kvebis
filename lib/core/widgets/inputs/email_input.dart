import 'package:flutter/material.dart';
import 'package:kvebis_app/core/constants/string_constant.dart';
import 'package:kvebis_app/core/extension/string_extension.dart';

class EmailInput extends StatelessWidget {
  const EmailInput({required this.controller, required this.text, super.key});
  final TextEditingController controller;
  final String text;
  @override
  TextFormField build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: (value) =>
          value!.isValidEmails ? null : StringConstants.checkYourEmail,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          labelText: text,
          labelStyle: const TextStyle(color: Colors.black),
          icon: const Icon(Icons.email)),
    );
  }
}
