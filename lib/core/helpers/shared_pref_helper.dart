// ignore_for_file: type_literal_in_constant_pattern

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefHelper {
  SharedPrefHelper._();

  /// Removes a value from shared Preferences with given key
  static Future<void> removeData(String key) async {
    debugPrint('Shared Preferences :  data with key: $key has been removed');
    SharedPreferences sharedPref = await SharedPreferences.getInstance();
    await sharedPref.remove(key);
  }

  /// Removes all Keys & values from Shared Preferences
  static Future<void> removeAllData() async {
    debugPrint('Shared Preferences : all data has been cleared');

    SharedPreferences sharedPref = await SharedPreferences.getInstance();
    await sharedPref.clear();
  }

  /// Save a [value] with a [key] in Shared Preferences
  static Future<void> setData(String key, value) async {
    debugPrint(
      'Shared Preferences : Set data with key : $key & value : $value',
    );

    SharedPreferences sharedPref = await SharedPreferences.getInstance();
    switch (value.runtimeType) {
      case String:
        await sharedPref.setString(key, value);
        break;
      case int:
        await sharedPref.setInt(key, value);
        break;
      case bool:
        await sharedPref.setBool(key, value);
        break;
      case double:
        await sharedPref.setDouble(key, value);
        break;
      default:
        return;
    }
  }

  /// Gets a bool value from Shared Preferences with given [key]
  static Future<bool?>? getBool(String key) async {
    debugPrint('Shared Preferences : return bool value with key : $key');

    SharedPreferences sharedPref = await SharedPreferences.getInstance();
    return sharedPref.getBool(key);
  }

  /// Gets a String value from Shared Preferences with given [key]

  static Future<String?>? getString(String key) async {
    debugPrint('Shared Preferences : return String value with key : $key');

    SharedPreferences sharedPref = await SharedPreferences.getInstance();
    return sharedPref.getString(key);
  }

  /// Gets a Int value from Shared Preferences with given [key]

  static Future<int?>? getInt(String key) async {
    debugPrint('Shared Preferences : return int value with key : $key');

    SharedPreferences sharedPref = await SharedPreferences.getInstance();
    return sharedPref.getInt(key);
  }

  /// Gets a Double value from Shared Preferences with given [key]

  static Future<double?>? getDouble(String key) async {
    debugPrint('Shared Preferences : return double value with key : $key');

    SharedPreferences sharedPref = await SharedPreferences.getInstance();
    return sharedPref.getDouble(key);
  }
}
