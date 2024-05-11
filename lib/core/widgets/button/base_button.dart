import 'package:flutter/material.dart';
import 'package:kvebis_app/core/constants/app/color_constants.dart';
import 'package:kvebis_app/core/extension/context_extension.dart';

class BaseButton extends StatelessWidget {
  const BaseButton({required this.name, required this.onPressed, super.key});
  final String name;
  final VoidCallback onPressed;
  @override
  ElevatedButton build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: ColorConstants.buttonColor,
      ),
      onPressed: () {
        FocusScope.of(context).unfocus();
        onPressed();
      },
      child: Center(
        child: Text(
          name,
          style: context.textTheme.bodyLarge!
              .copyWith(color: ColorConstants.whiteColor),
        ),
      ),
    );
  }
}
