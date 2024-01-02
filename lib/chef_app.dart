import 'package:chef_app/core/routes/app_routes.dart';
import 'package:flutter/material.dart';

class ChefApp extends StatelessWidget {
  const ChefApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      initialRoute: Routes.initRoute,
      onGenerateRoute: AppRouts.generateRoutes,
      debugShowCheckedModeBanner: false,
      home: Scaffold(),
    ) ;
  }
}