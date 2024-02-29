import 'package:chef_app/core/helpers/extentions.dart';
import 'package:chef_app/core/routes/app_routes.dart';
import 'package:chef_app/core/utils/app_colors.dart';
import 'package:chef_app/core/utils/app_strings.dart';
import 'package:chef_app/core/widgets/custom_elevated_button.dart';
import 'package:chef_app/core/widgets/lang_text_cubit.dart';
import 'package:chef_app/features/sign_in/presentation/controller/sign_in/sign_in_cubit.dart';
import 'package:chef_app/features/sign_in/presentation/view/widgets/sign_in_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: ListView(
          children: [
            Stack(
              children: [
                ClipPath(
                  clipper: ClipBiggerContainer(),
                  child: Container(
                    width: double.infinity,
                    height: 250.h,
                    color: AppColor.primary.withOpacity(.5),
                  ),
                ),
                ClipPath(
                  clipper: ClipBigContainer(),
                  child: Container(
                    width: double.infinity,
                    height: 200.h,
                    color: AppColor.primary.withOpacity(.8),
                  ),
                ),
                Positioned(
                  bottom: 150.h,
                  left: MediaQuery.of(context).size.width * .30,
                  child: const CubitText(
                    data: AppStrings.welcomeBack,
                    style: TextStyle(
                      color: AppColor.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                    ),
                  ),
                ),
              ],
            ),
            const SignInForm(),
            Gap(24.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0.w),
              child: Align(
                alignment: Alignment.centerLeft,
                child: TextButton(
                  onPressed: () {
                    context.pushNamed(Routes.sendCode);
                  },
                  child: const CubitText(
                    data: AppStrings.forgetPassword,
                    style: TextStyle(
                      color: AppColor.gray,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
            Gap(50.h),
            BlocConsumer<SignInCubit, SignInState>(
              listener: (context, state) {
                if (state is SignInFailure) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: CubitText(
                        data: AppStrings.errorMessage,
                      ),
                    ),
                  );
                } else if (state is SignInSuccess) {
                  context.pushReplacementNamed(Routes.addMeal);
                }
              },
              builder: (context, state) {
                return state is SignInLoading
                    ? const Center(child: CircularProgressIndicator())
                    : CustomElevatedButton(
                        onPressed: () {
                          if (SignInCubit.get(context)
                              .formKey
                              .currentState!
                              .validate()) {
                            SignInCubit.get(context).signIn();
                          }
                        },
                        text: AppStrings.signIn,
                      );
              },
            ),
            Gap(50.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CubitText(
                  data: AppStrings.dontHaveAccount,
                  style: TextStyle(
                    color: AppColor.gray,
                    fontSize: 22,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const CubitText(
                    data: AppStrings.signUp,
                    style: TextStyle(
                      color: AppColor.primary,
                      fontSize: 22,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ClipBigContainer extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path_0 = Path();
    path_0.moveTo(0, 0);
    path_0.lineTo(size.width, 0);
    path_0.lineTo(size.width * 1.0004267, size.height * 0.9533498);
    path_0.quadraticBezierTo(size.width * 1.0030133, size.height * 0.9493966,
        size.width * 0.9988800, size.height * 0.8431281);
    path_0.cubicTo(
        size.width * 0.8364533,
        size.height * 0.9101108,
        size.width * 0.2707733,
        size.height * 0.9557512,
        size.width * 0.0010667,
        size.height * 0.8906773);
    path_0.quadraticBezierTo(size.width * -0.0020000, size.height * 1.0214286,
        0, size.height * 0.9554187);
    return path_0;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

class ClipBiggerContainer extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path_0 = Path();
    path_0.moveTo(0, 0);
    path_0.lineTo(size.width, 0);
    path_0.lineTo(size.width, size.height * 0.7967980);
    path_0.quadraticBezierTo(size.width * 0.4725333, size.height * 0.9007635,
        size.width * 0.0008800, size.height * 0.7793350);
    path_0.quadraticBezierTo(size.width * 0.0028000, size.height * 0.8288300, 0,
        size.height * 0.8620690);

    return path_0;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
