import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@lazySingleton
class SharedPrefsUtils {
  final SharedPreferences _prefs;

  SharedPrefsUtils(this._prefs);

  Future<bool> saveData({
    required String key,
    required dynamic value,
  }) async {
    if (value is int) return _prefs.setInt(key, value);
    if (value is double) return _prefs.setDouble(key, value);
    if (value is String) return _prefs.setString(key, value);
    if (value is bool) return _prefs.setBool(key, value);
    throw Exception("Unsupported type");
  }

  Object? getData({required String key}) {
    return _prefs.get(key);
  }

  bool? getBool(String key) => _prefs.getBool(key);


  Future<bool> removeData({required String key}) async {
    return await _prefs.remove(key);
  }
}