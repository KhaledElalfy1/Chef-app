import 'package:chef_app/core/helpers/extentions.dart';
import 'package:chef_app/core/routes/app_routes.dart';
import 'package:chef_app/core/utils/app_colors.dart';
import 'package:chef_app/core/utils/app_strings.dart';
import 'package:chef_app/core/widgets/custom_elevated_button.dart';
import 'package:chef_app/core/widgets/custom_text_form_filed.dart';
import 'package:chef_app/core/widgets/lang_text_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class SendCode extends StatelessWidget {
  const SendCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const CubitText(
          data: AppStrings.forgetPassword,
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
                data: AppStrings.enterYourEmailToReset,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Gap(24.h),
              CustomTextFormFiled(
                hintText: 'E-mail',
                textEditingController: TextEditingController(),
              ),
              Gap(24.h),
              CustomElevatedButton(
                  onPressed: () {
                    context.pushNamed(Routes.resetPassword);
                  },
                  text: AppStrings.sendCode),
            ],
          ),
        ),
      ),
    );
  }
}
