import 'package:chef_app/core/utils/app_colors.dart';
import 'package:chef_app/core/utils/app_strings.dart';
import 'package:chef_app/features/change_language/presentation/view/widgets/choose_languade_button.dart';

import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:chef_app/core/locale/app_locale.dart';

class ChangeLanguage extends StatelessWidget {
  const ChangeLanguage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ClipPath(
            clipper: ClipBigContainer(),
            child: Container(
              width: double.infinity,
              height: 750.h,
              color: AppColor.primary.withOpacity(.5),
            ),
          ),
          ClipPath(
            clipper: ClipBigContainer(),
            child: Container(
              width: double.infinity,
              height: 700.h,
              color: AppColor.primary,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * (1 / 7),
              ),
              Image.asset(
                'assets/images/logo.png',
                height: 120.h,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * (16 / 812),
              ),
              Text(
                AppStrings.welcomeToChefApp.tr(context),
                style:const TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * (54 / 812),
              ),
               Text(
                AppStrings.pleaseChooseYourLanguage.tr(context),
                style:const TextStyle(
                  fontSize: 26,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * (120 / 812),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ChooseLanguageButton(onPressed: () {}, text: 'English'),
                  ChooseLanguageButton(onPressed: () {}, text: 'العربية'),
                ],
              ),
            ],
          ),
        ],
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
