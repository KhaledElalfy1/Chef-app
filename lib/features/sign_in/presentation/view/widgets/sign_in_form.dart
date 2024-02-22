import 'package:chef_app/core/utils/app_colors.dart';
import 'package:chef_app/core/widgets/custom_text_form_filed.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({super.key});

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
        child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.0.w),
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Column(
          children: [
            CustomTextFormFiled(
              hintText: 'Email',
              textEditingController: emailController,
            ),
            Gap(30.h),
            CustomTextFormFiled(
              textEditingController: passwordController,
              hintText: 'Password',
              iconButton: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.visibility_off,
                  color: AppColor.gray,
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
