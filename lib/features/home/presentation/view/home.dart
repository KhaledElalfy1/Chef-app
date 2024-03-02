import 'package:chef_app/features/home/presentation/controller/cubit/home_cubit.dart';
import 'package:chef_app/features/home/presentation/view/widgets/custom_button_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return Scaffold(
          body: HomeCubit.get(context)
              .homeRoutes[HomeCubit.get(context).currentIndex],
          bottomNavigationBar: const CustomButtonNavBar(),
        );
      },
    );
  }
}
