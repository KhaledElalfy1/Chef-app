import 'package:flutter/material.dart';

class CustomTextFormFiled extends StatelessWidget {
  const CustomTextFormFiled(
      {super.key,
      required this.hintText,
      this.iconButton,
      required this.textEditingController,
      this.obscureText = false});
  final String hintText;
  final Widget? iconButton;
  final TextEditingController textEditingController;
  final bool obscureText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      controller: textEditingController,
      textAlign: TextAlign.left,
      decoration: InputDecoration(
        hintText: hintText,
        suffixIcon: iconButton,
      ),
    );
  }
}
