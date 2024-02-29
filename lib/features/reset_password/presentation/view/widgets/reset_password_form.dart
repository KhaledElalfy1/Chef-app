import 'package:chef_app/core/widgets/custom_text_form_filed.dart';
import 'package:chef_app/features/reset_password/presentation/controller/cubit/reset_password_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class ResetPasswordForm extends StatelessWidget {
  const ResetPasswordForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      key: ResetPasswordCubit.get(context).createPasswordFormKey,
      child: Column(
        children: [
          BlocBuilder<ResetPasswordCubit, ResetPasswordState>(
            builder: (context, state) {
              return Column(
                children: [
                  CustomTextFormFiled(
                    hintText: 'New Password',
                    obscureText: ResetPasswordCubit.get(context).isVisable,
                    textEditingController:
                        ResetPasswordCubit.get(context).passwordController,
                    iconButton: IconButton(
                      onPressed: () {
                        ResetPasswordCubit.get(context).changeVisibility();
                      },
                      icon: ResetPasswordCubit.get(context).visibilityICon,
                    ),
                  ),
                  Gap(24.h),
                  CustomTextFormFiled(
                    hintText: 'Confirm Password',
                    obscureText: ResetPasswordCubit.get(context).isVisable,
                    textEditingController: ResetPasswordCubit.get(context)
                        .confirmPasswordController,
                    iconButton: IconButton(
                      onPressed: () {
                        ResetPasswordCubit.get(context).changeVisibility();
                      },
                      icon: ResetPasswordCubit.get(context).visibilityICon,
                    ),
                  ),
                ],
              );
            },
          ),
          Gap(24.h),
          CustomTextFormFiled(
            hintText: 'Send Code',
            keyboardType: TextInputType.number,
            textEditingController:
                ResetPasswordCubit.get(context).codeController,
          ),
        ],
      ),
    );
  }
}
