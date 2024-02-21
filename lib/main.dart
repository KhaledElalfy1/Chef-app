import 'package:chef_app/chef_app.dart';
import 'package:chef_app/core/database/cache/cache_helper.dart';
import 'package:chef_app/core/global_controller/cubit/language_cubit.dart';
import 'package:chef_app/core/services/server_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setUp();
 await sl<CacheHelper>().init();
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => sl<LanguageCubit>()..getCachedLanguage(),
        )
      ],
      child: const ChefApp(),
    ),
  );
}
