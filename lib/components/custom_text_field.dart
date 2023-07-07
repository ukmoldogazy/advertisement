import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hinText,
    this.controller,
    this.maxLines,
    this.onTap,
  });
  final String hinText;
  final TextEditingController? controller;
  final int? maxLines;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLines,
      controller: controller,
      onTap: onTap,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        filled: true,
        hintText: hinText,
      ),
    );
  }
}
