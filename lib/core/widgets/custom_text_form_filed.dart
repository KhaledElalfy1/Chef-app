import 'package:flutter/material.dart';

class CustomTextFormFiled extends StatelessWidget {
  const CustomTextFormFiled(
      {super.key,
      required this.hintText,
      this.iconButton,
      required this.textEditingController,
      this.obscureText = false, this.validator});
  final String hintText;
  final Widget? iconButton;
  final TextEditingController textEditingController;
  final bool obscureText;
  final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
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
