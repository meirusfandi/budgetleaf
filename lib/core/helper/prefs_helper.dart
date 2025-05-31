import 'package:shared_preferences/shared_preferences.dart';

late final SharedPreferences prefInstance;

class PrefsHelper {
  static Future<void> init() async {
    prefInstance = await SharedPreferences.getInstance();
  }

  Future<bool> setString(String key, String value) async {
    return await prefInstance.setString(key, value);
  }

  String? getString(String key) {
    return prefInstance.getString(key);
  }

  Future<bool> remove(String key) async {
    return await prefInstance.remove(key);
  }
}

final prefHelper = PrefsHelper();