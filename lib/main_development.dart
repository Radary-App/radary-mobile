import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:radary/core/routing/app_router.dart';
import 'package:radary/radary_app.dart';

void main()async {
  // To fix texts being hidden bug in flutter_screenutil in release mode.
  await ScreenUtil.ensureScreenSize();
  runApp( RadaryApp(appRouter: AppRouter(),));
}