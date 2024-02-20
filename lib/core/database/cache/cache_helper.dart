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
}
