import 'package:flutter/material.dart';

class EmailInput extends StatelessWidget {
  EmailInput({super.key, required this.controller, required this.text});
  TextEditingController controller;
  String text;
  @override
  TextFormField build(BuildContext context) {
    return TextFormField(
      controller: controller,
      // validator: (value) => value!.isValidEmails ? null : "Check your email",
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          labelText: text,
          labelStyle: const TextStyle(color: Colors.black),
          icon: const Icon(Icons.email)),
    );
  }
}
