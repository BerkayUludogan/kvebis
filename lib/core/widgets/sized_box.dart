import 'package:flutter/material.dart';
import 'package:kvebis_app/core/extension/context_extension.dart';

class SizedBox10 extends StatelessWidget {
  const SizedBox10({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.lowValue,
    );
  }
}
