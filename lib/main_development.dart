import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:radary/core/helpers/cach/cach_helper.dart';
import 'package:radary/core/helpers/extensions/string_extension.dart';
import 'package:radary/core/routing/app_router.dart';
import 'package:radary/radary_app.dart';

import 'core/di/dependecy_injection.dart';
import 'core/helpers/cach/constants.dart';

void main() async {
  // Ensure Flutter's binding is initialized before platform services are accessed
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize the CacheHelper to get shared preferences
  await CacheHelper().init();

  // Set up dependency injection
  setupGetIt();

  // Ensure screen size setup for ScreenUtil
  await ScreenUtil.ensureScreenSize();

  // Check if the user is logged in
  bool isLoggedIn = await checkIfUserIsLoggedIn();

  // Run the app with the result of isLoggedIn
  runApp(RadaryApp(
    appRouter: AppRouter(),
    isLoggedIn: isLoggedIn,
  ));
}

Future<bool> checkIfUserIsLoggedIn() async {
  String? userToken = await CacheHelper.sharedPreferences.getString(SherdPreferencesKeys.userToken);
  return userToken.isNullOrEmpty(); // Returns true if logged out
}