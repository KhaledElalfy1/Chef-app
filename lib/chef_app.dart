import 'package:chef_app/core/routes/app_routes.dart';
import 'package:chef_app/core/themes/app_themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChefApp extends StatelessWidget {
  const ChefApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  ScreenUtilInit(
      designSize:const Size(375, 812),
      builder: (context, child) =>  MaterialApp(
        initialRoute: Routes.initRoute,
        onGenerateRoute: AppRouts.generateRoutes,
        theme: themeData(),
        debugShowCheckedModeBanner: false,
      ),
    ) ;
  }
}