import 'package:chef_app/core/database/API/api_consumer.dart';
import 'package:chef_app/core/database/API/dio_consumer.dart';
import 'package:chef_app/core/database/cache/cache_helper.dart';
import 'package:chef_app/core/global_controller/cubit/language_cubit.dart';
import 'package:chef_app/features/reset_password/data/repo/send_code_repo.dart';
import 'package:chef_app/features/reset_password/presentation/controller/cubit/reset_password_cubit.dart';
import 'package:chef_app/features/sign_in/data/repo/sign_in_repo.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

void setUp() {
  sl.registerLazySingleton(() => LanguageCubit());
  sl.registerLazySingleton(() => CacheHelper());
  sl.registerLazySingleton(() => Dio());
  sl.registerLazySingleton<ApiConsumer>(() => DioConsumer(dio: sl()));
  sl.registerLazySingleton(() =>SignInRepo());
  sl.registerLazySingleton(() =>ResetPasswordCubit());
  sl.registerLazySingleton(() =>SendCodeRepo());
}
