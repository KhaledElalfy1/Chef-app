import 'package:chef_app/core/utils/app_colors.dart';
import 'package:chef_app/core/widgets/custom_text_form_filed.dart';
import 'package:chef_app/features/sign_in/presentation/controller/sign_in/sign_in_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
        key: SignInCubit.get(context).formKey,
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
                  textEditingController:
                      SignInCubit.get(context).emailController,
                ),
                Gap(30.h),
                BlocBuilder<SignInCubit, SignInState>(
                  builder: (context, state) {
                    return CustomTextFormFiled(
                      obscureText: SignInCubit.get(context).visibility,
                      textEditingController:
                          SignInCubit.get(context).passwordController,
                      hintText: 'Password',
                      iconButton: IconButton(
                        onPressed: () {
                          SignInCubit.get(context).changeVisibility();
                        },
                        icon:SignInCubit.get(context).visibility? const Icon(
                          Icons.visibility_off,
                          color: AppColor.gray,
                        ):const Icon(
                          Icons.visibility,
                          color: AppColor.gray,
                        )
                      ),
                    );
                  },
                )
              ],
            ),
          ),
        ));
  }
}
