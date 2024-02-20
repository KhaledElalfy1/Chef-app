import 'package:chef_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChooseLanguageButton extends StatelessWidget {
  const ChooseLanguageButton({
    super.key,
    required this.text,
    this.onPressed,
  });
  final String text;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        padding: MaterialStatePropertyAll(
          EdgeInsets.symmetric(vertical: 8.h, horizontal: 24.w),
        ),
        backgroundColor: const MaterialStatePropertyAll(AppColor.black),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: const TextStyle(
          color: AppColor.white,
          fontWeight: FontWeight.bold,
          fontSize: 25,
        ),
      ),
    );
  }
}