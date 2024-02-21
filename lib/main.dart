import 'package:chef_app/chef_app.dart';
import 'package:chef_app/core/global_controller/cubit/language_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LanguageCubit(),
        )
      ],
      child: const ChefApp(),
    ),
  );
}
