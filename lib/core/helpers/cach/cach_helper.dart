import 'package:shared_preferences/shared_preferences.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class CacheHelper {
  static late SharedPreferences sharedPreferences;

  //! Initialize shared preferences
  Future<void> init() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  //! Get data
  String? getDataString({required String key}) {
    return sharedPreferences.getString(key);
  }

  //! Save data
  Future<bool> saveData({required String key, required dynamic value}) async {
    if (value is bool) {
      return await sharedPreferences.setBool(key, value);
    } else if (value is String) {
      return await sharedPreferences.setString(key, value);
    } else if (value is int) {
      return await sharedPreferences.setInt(key, value);
    } else {
      return await sharedPreferences.setDouble(key, value);
    }
  }

  //! Get data already saved in local database
  dynamic getData({required String key}) {
    return sharedPreferences.get(key);
  }

  //! Remove data using specific key
  Future<bool> removeData({required String key}) async {
    return await sharedPreferences.remove(key);
  }

  //! Check if local database contains {key}
  bool containsKey({required String key}) {
    return sharedPreferences.containsKey(key);
  }

  //! Clear all data in the local database
  Future<bool> clearData() async {
    return await sharedPreferences.clear();
  }
}
