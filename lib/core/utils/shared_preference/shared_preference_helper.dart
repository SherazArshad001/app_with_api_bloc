import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesHelper {
  static SharedPreferences? _prefs;

  static Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  static const String _isLoggedInKey = 'isLoggedIn';
  static const String _userEmailKey = 'userEmail';

  static Future<void> setLoggedIn(bool isLoggedIn) async {
    await _prefs?.setBool(_isLoggedInKey, isLoggedIn);
  }

  static Future<bool> isLoggedIn() async {
    return _prefs?.getBool(_isLoggedInKey) ?? false;
  }

  static Future<void> setUserEmail(String email) async {
    await _prefs?.setString(_userEmailKey, email);
  }

  static Future<String?> getUserEmail() async {
    return _prefs?.getString(_userEmailKey);
  }

  static Future<void> clearPreferences() async {
    await _prefs?.clear();
  }
}
