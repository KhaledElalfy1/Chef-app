import 'package:chef_app/core/database/cache/cache_helper.dart';
import 'package:chef_app/core/global_controller/cubit/language_cubit.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

void setUp() {
  sl.registerLazySingleton(() => LanguageCubit());
  sl.registerLazySingleton(() => CacheHelper());
}
