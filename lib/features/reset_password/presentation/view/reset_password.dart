import 'package:chef_app/core/helpers/extentions.dart';
import 'package:chef_app/core/routes/app_routes.dart';
import 'package:chef_app/core/utils/app_colors.dart';
import 'package:chef_app/core/utils/app_strings.dart';
import 'package:chef_app/core/widgets/custom_elevated_button.dart';
import 'package:chef_app/core/widgets/lang_text_cubit.dart';
import 'package:chef_app/core/widgets/loading_widget.dart';
import 'package:chef_app/features/reset_password/presentation/controller/cubit/reset_password_cubit.dart';
import 'package:chef_app/features/reset_password/presentation/view/widgets/reset_password_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const CubitText(
          data: AppStrings.resetPassword,
          style: TextStyle(
            color: AppColor.white,
            fontSize: 16,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0.w),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: ListView(
            children: [
              Gap(40.h),
              Image.asset(
                'assets/images/lock.png',
                height: 300.h,
              ),
              Gap(24.h),
              const CubitText(
                data: AppStrings.createNewPassword,
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Gap(24.h),
              const ResetPasswordForm(),
              Gap(24.h),
              BlocConsumer<ResetPasswordCubit, ResetPasswordState>(
                listener: (context, state) {
                  if (state is ResetPasswordSuccess) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text(state.successMessage)),
                    );
                    context.pushNamedAndRemoveUntil(Routes.signIn,predicate: (route)=>false);
                  } else if (state is ResetPasswordFailure) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text(state.eMessage)),
                    );
                    context.pushNamedAndRemoveUntil(Routes.signIn,predicate: (route)=>false);
                  }
                },
                builder: (context, state) {
                  return state is ResetPasswordLoading
                      ? const CustomLoadingWidget()
                      : CustomElevatedButton(
                          onPressed: () {
                            if (ResetPasswordCubit.get(context)
                                .createPasswordFormKey
                                .currentState!
                                .validate()) {
                              ResetPasswordCubit.get(context).resetPassword();
                            }
                          },
                          text: AppStrings.resetPassword);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
