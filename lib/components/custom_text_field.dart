import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.hinText,
    this.controller,
    this.maxLines,
    this.onTap,
    this.prefixIcon,
    this.focusNode,
  });
  final String? hinText;
  final TextEditingController? controller;
  final int? maxLines;
  final void Function()? onTap;
  final Widget? prefixIcon;
  final FocusNode? focusNode;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLines,
      controller: controller,
      onTap: onTap,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        border: const OutlineInputBorder(),
        filled: true,
        hintText: hinText,
      ),
    );
  }
}
