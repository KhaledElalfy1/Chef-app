import 'package:chef_app/core/widgets/custom_text_form_filed.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class ResetPasswordForm extends StatelessWidget {
  const ResetPasswordForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextFormFiled(
          hintText: 'New Password',
          textEditingController: TextEditingController(),
          iconButton: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.visibility_off),
          ),
        ),
        Gap(24.h),
        CustomTextFormFiled(
          hintText: 'Confirm Password',
          textEditingController: TextEditingController(),
          iconButton: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.visibility_off),
          ),
        ),
        Gap(24.h),
        CustomTextFormFiled(
          hintText: 'Send Code',
          keyboardType: TextInputType.number,
          textEditingController: TextEditingController(),
        ),
      ],
    );
  }
}
