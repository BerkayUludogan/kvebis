import 'package:flutter/material.dart';
import 'package:kvebis_app/core/extension/context_extension.dart';

class BaseButton extends StatelessWidget {
  const BaseButton({required this.name, super.key});
  final String name;
  @override
  ElevatedButton build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFFF43D53),
      ),
      onPressed: () {},
      child: Center(
        child: Text(
          name,
          style: context.textTheme.bodyLarge!.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
