import 'package:flutter/material.dart';
import 'package:kvebis_app/core/constants/app/color_constants.dart';
import 'package:kvebis_app/core/extension/context_extension.dart';

class ContainerAppBar extends StatelessWidget {
  const ContainerAppBar({required this.text, super.key});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorConstants.buttonColor,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      height: context.splashHigh.top,
      width: context.width,
      child: Padding(
        padding: const EdgeInsets.only(top: 130, left: 145),
        child: Text(
          text,
          style: const TextStyle(fontSize: 35, color: Colors.white),
        ),
      ),
    );
  }
}
