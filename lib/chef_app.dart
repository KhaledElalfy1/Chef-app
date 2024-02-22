import 'package:chef_app/core/global_controller/cubit/language_cubit.dart';
import 'package:chef_app/core/locale/app_locale.dart';
import 'package:chef_app/core/routes/app_routes.dart';
import 'package:chef_app/core/themes/app_themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChefApp extends StatelessWidget {
  const ChefApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) => BlocBuilder<LanguageCubit, LanguageState>(
        builder: (context, state) {
          return MaterialApp(
            localizationsDelegates: const [
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
              AppLocalizations.delegate,
            ],
            supportedLocales: const [
              Locale('ar', 'EG'),
              Locale('en', 'US'),
            ],
            locale: Locale(LanguageCubit.get(context).lang == Language.english
                ? 'en'
                : 'ar'),
            initialRoute: Routes.initRoute,
            onGenerateRoute: AppRouts.generateRoutes,
            theme: themeData(),
            debugShowCheckedModeBanner: false,
          );
        },
      ),
    );
  }
}
