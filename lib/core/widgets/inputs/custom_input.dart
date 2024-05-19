import 'package:flutter/material.dart';
import 'package:kvebis_app/core/constants/app/color_constants.dart';

class CustomInput extends StatelessWidget {
  const CustomInput({
    required this.text,
    this.icon,
    this.validator,
    this.keyboardType,
    this.controller,
    this.maxLength,
    super.key,
  });
  final TextEditingController? controller;
  final String text;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final int? maxLength;
  final Icon? icon;
  @override
  TextFormField build(BuildContext context) {
    return TextFormField(
      maxLength: maxLength,
      controller: controller,
      validator: (value) {
        if (validator != null) {
          final originalResult = validator!(value);
          if (originalResult == null) {
            return null;
          } else {
            return originalResult;
          }
        }
        return null;
      },
      keyboardType: keyboardType,
      decoration: InputDecoration(
        icon: icon,
        labelText: text,
        border: const UnderlineInputBorder(),
        labelStyle: TextStyle(color: ColorConstants.blackColor),
      ),
    );
  }
}
