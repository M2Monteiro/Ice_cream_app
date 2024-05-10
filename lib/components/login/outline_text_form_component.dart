import 'package:flutter/material.dart';

class OutlineTextFormComponent extends StatelessWidget {
  final Widget prefixIcon;
  final String hintText;

  const OutlineTextFormComponent({
    super.key,
    required this.hintText,
    required this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hintText,
          prefixIcon: prefixIcon,
          contentPadding: const EdgeInsets.only(
            left: 20,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32),
          ),
        ),
      ),
    );
  }
}
