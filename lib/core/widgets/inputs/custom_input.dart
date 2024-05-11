import 'package:flutter/material.dart';
import 'package:kvebis_app/core/constants/app/color_constants.dart';

class CustomInput extends StatelessWidget {
  const CustomInput({
    required this.text,
    this.validator,
    this.keyboardType,
    this.controller,
    super.key,
  });
  final TextEditingController? controller;
  final String text;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  @override
  TextFormField build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        labelText: text,
        border: const OutlineInputBorder(),
        labelStyle: TextStyle(color: ColorConstants.blackColor),
      ),
    );
  }
}
