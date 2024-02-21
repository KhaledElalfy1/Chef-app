import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {
  late SharedPreferences sharedPreferences;

  init() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  String? getDataString({
    required String key,
  }) {
    return sharedPreferences.getString(key);
  }

  final String _cachedCode = "cachedCode";

  String getCachedLanguage() {
    final code = sharedPreferences.getString(_cachedCode);
    if (code != null) {
      return code;
    } else {
      return 'ar';
    }
  }

  Future<void> cacheLanguage(String code) async {
    await sharedPreferences.setString(_cachedCode, code);
  }
}
