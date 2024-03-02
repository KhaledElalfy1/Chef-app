import 'package:chef_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: GNav(
        activeColor: AppColor.primary,
        
        gap: 8,
        tabs: [
          GButton(icon: Icons.menu),
          GButton(icon: Icons.person),
        ],
      ),
    );
  }
}
