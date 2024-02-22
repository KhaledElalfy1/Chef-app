import 'package:chef_app/core/utils/app_colors.dart';
import 'package:chef_app/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

ThemeData themeData() {
  return ThemeData(
    primaryColor: AppColor.primary,
    scaffoldBackgroundColor: AppColor.white,
    appBarTheme: const AppBarTheme(
      color: AppColor.primary,
      centerTitle: true,
    ),
    textTheme: TextTheme(
      displayLarge: boldStyle(),
      displayMedium: regularStyle(),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColor.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
        hintStyle: boldStyle(
          color: AppColor.gray,
          fontSize: 16,
        ),
        enabledBorder: borderDecoration(),
        focusedBorder: borderDecoration(),
        errorBorder: borderDecoration(color: AppColor.red),),
  );
}

OutlineInputBorder borderDecoration({Color color = AppColor.gray}) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(8.r),
    borderSide: BorderSide(
      color: color,
      width: 1.5,
    ),
  );
}
