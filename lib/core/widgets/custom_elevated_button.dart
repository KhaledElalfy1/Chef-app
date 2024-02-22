import 'package:chef_app/core/utils/app_colors.dart';
import 'package:chef_app/core/widgets/lang_text_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({super.key, required this.text, this.onPressed});
  final String text;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.0.w),
      child: ElevatedButton(
        onPressed: onPressed,
        child: CubitText(
          data: text,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: AppColor.white,
            fontSize: 24,
          ),
        ),
      ),
    );
  }
}
