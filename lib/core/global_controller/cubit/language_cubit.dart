import 'package:flutter_bloc/flutter_bloc.dart';

part 'language_state.dart';

class LanguageCubit extends Cubit<LanguageState> {
  LanguageCubit() : super(LanguageInitial());
  static LanguageCubit get(context) => BlocProvider.of(context);
  Language lang = Language.english;
  void changeLanguage(Language language) {
    lang = language;
    emit(LanguageChange());
  }
  
}

enum Language {
  arabic,
  english,
}
