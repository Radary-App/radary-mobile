import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:injectable/injectable.dart';
@LazySingleton()
class CacheHelper {
  static late SharedPreferences sharedPreferences;

  Future<void> init() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  String? getDataString({required String key}) {
    return sharedPreferences.getString(key);
  }

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

  dynamic getData({required String key}) {
    return sharedPreferences.get(key);
  }

  Future<bool> removeData({required String key}) async {
    return await sharedPreferences.remove(key);
  }

  bool containsKey({required String key}) {
    return sharedPreferences.containsKey(key);
  }

  Future<bool> clearData() async {
    return await sharedPreferences.clear();
  }

  // static Future<void> setSecuredString(String key, String value) async {
  //   const flutterSecureStorage = FlutterSecureStorage();
  //   debugPrint("FlutterSecureStorage : setSecuredString with key : $key and value : $value");
  //   await flutterSecureStorage.write(key: key, value: value);
  // }

  // static Future<String?> getSecuredString(String key) async {
  //   const flutterSecureStorage = FlutterSecureStorage();
  //   debugPrint('FlutterSecureStorage : getSecuredString with key: $key');
  //   return await flutterSecureStorage.read(key: key);
  // }
}