// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:radary/core/routing/app_router.dart';

import 'core/widgets/animated_splash_screen_custom.dart';
import 'generated/l10n.dart';

class RadaryApp extends StatelessWidget {
  final AppRouter appRouter;
  const RadaryApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              // primaryColor: primaryColor,
              // scaffoldBackgroundColor: white,
              ),
          onGenerateRoute: appRouter.generateRoute,
          localizationsDelegates: const [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: S.delegate.supportedLocales,
          title: 'Radary',
          home: const AnimatedSplashScreenCustom(),
        );
      },
    );
  }
}
//