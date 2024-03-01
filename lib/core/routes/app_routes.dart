import 'package:chef_app/core/services/server_locator.dart';
import 'package:chef_app/features/change_language/presentation/view/change_lang.dart';
import 'package:chef_app/features/menu/presentation/view/add_meal.dart';
import 'package:chef_app/features/menu/presentation/view/menu.dart';
import 'package:chef_app/features/profile/presentation/view/change_password.dart';
import 'package:chef_app/features/profile/presentation/view/profile.dart';
import 'package:chef_app/features/profile/presentation/view/setting.dart';
import 'package:chef_app/features/profile/presentation/view/update_profile.dart';
import 'package:chef_app/features/reset_password/presentation/controller/cubit/reset_password_cubit.dart';
import 'package:chef_app/features/reset_password/presentation/view/reset_password.dart';
import 'package:chef_app/features/reset_password/presentation/view/send_code.dart';
import 'package:chef_app/features/sign_in/presentation/controller/sign_in/sign_in_cubit.dart';
import 'package:chef_app/features/sign_in/presentation/view/sign_in.dart';
import 'package:chef_app/features/sign_up/presentation/view/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Routes {
  static const String initRoute = '/';

  static const String signUp = '/signUp';

  static const String signIn = '/signIn';

  static const String resetPassword = '/resetPassword';
  static const String sendCode = '/sendCode';

  static const String changePassword = '/changePassword';
  static const String profile = '/profile';
  static const String setting = '/setting';
  static const String updateProfile = '/updateProfile';

  static const String addMeal = '/addMeal';
  static const String menu = '/menu';
}

class AppRouts {
  static Route generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case Routes.initRoute:
        return MaterialPageRoute(
          builder: (_) => const ChangeLanguage(),
        );

      case Routes.addMeal:
        return MaterialPageRoute(
          builder: (_) => const AddMeal(),
        );

      case Routes.changePassword:
        return MaterialPageRoute(
          builder: (_) => const ChangePassword(),
        );

      case Routes.menu:
        return MaterialPageRoute(
          builder: (_) => const Menu(),
        );

      case Routes.profile:
        return MaterialPageRoute(
          builder: (_) => const Profile(),
        );

      case Routes.resetPassword:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => sl<ResetPasswordCubit>(),
            child: const ResetPassword(),
          ),
        );

      case Routes.sendCode:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) =>  sl<ResetPasswordCubit>(),
            child: const SendCode(),
          ),
        );

      case Routes.setting:
        return MaterialPageRoute(
          builder: (_) => const Setting(),
        );

      case Routes.signIn:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => SignInCubit(),
            child: const SignIn(),
          ),
        );
      case Routes.signUp:
        return MaterialPageRoute(
          builder: (_) => const SignUp(),
        );
      case Routes.updateProfile:
        return MaterialPageRoute(
          builder: (_) => const UpdateProfile(),
        );

      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(
              child: Text('No Route'),
            ),
          ),
        );
    }
  }
}
