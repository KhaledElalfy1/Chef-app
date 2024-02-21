import 'package:chef_app/core/database/cache/cache_helper.dart';
import 'package:chef_app/core/services/server_locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'language_state.dart';

class LanguageCubit extends Cubit<LanguageState> {
  LanguageCubit() : super(LanguageInitial());
  static LanguageCubit get(context) => BlocProvider.of(context);
  Language lang = Language.english;
  void changeLanguage(Language language) {
    lang = language;
    sl<CacheHelper>().cacheLanguage(lang == Language.arabic ? 'ar' : 'en');
    emit(LanguageChange());
  }

  void getCachedLanguage() {
    final cached = sl<CacheHelper>().getCachedLanguage();
    lang = cached == 'ar' ? Language.arabic : Language.english;
  }
}

enum Language {
  arabic,
  english,
}
