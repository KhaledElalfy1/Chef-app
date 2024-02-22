import 'package:chef_app/core/utils/app_colors.dart';
import 'package:chef_app/core/utils/app_strings.dart';
import 'package:chef_app/core/widgets/lang_text_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                left: MediaQuery.of(context).size.width * .35,
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
          TextFormField(),
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
