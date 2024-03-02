import 'package:chef_app/core/locale/app_locale.dart';
import 'package:chef_app/core/utils/app_colors.dart';
import 'package:chef_app/core/utils/app_strings.dart';
import 'package:chef_app/features/home/presentation/controller/cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class CustomButtonNavBar extends StatelessWidget {
  const CustomButtonNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GNav(
      activeColor: AppColor.primary,
      tabBackgroundColor: AppColor.black12,
      tabBorderRadius: 20,
      padding: const EdgeInsets.all(24),
      onTabChange: (value) {
        HomeCubit.get(context).changeIndex(value: value);
      },
      gap: 8,
      tabs:  [
        GButton(
          icon: Icons.menu,
          text: AppStrings.menu.tr(context),
        ),
        GButton(
          icon: Icons.person,
          text: AppStrings.profile.tr(context),
        ),
      ],
    );
  }
}