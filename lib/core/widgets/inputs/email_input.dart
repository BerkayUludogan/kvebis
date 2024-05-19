import 'package:flutter/material.dart';
import 'package:kvebis_app/core/constants/app/color_constants.dart';
import 'package:kvebis_app/core/constants/app/string_constant.dart';
import 'package:kvebis_app/core/extension/string_extension.dart';

class EmailInput extends StatelessWidget {
  const EmailInput({required this.controller, super.key});
  final TextEditingController controller;
  @override
  TextFormField build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: (value) =>
          value!.isValidEmails ? null : StringConstants.checkYourEmail,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: StringConstants.email,
        labelStyle: TextStyle(color: ColorConstants.blackColor),
        icon: const Icon(Icons.email),
      ),
    );
  }
}
