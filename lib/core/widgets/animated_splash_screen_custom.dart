import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../../features/onboarding/ui/screens/on_boarding_screens.dart';

class AnimatedSplashScreenCustom extends StatelessWidget {
  const AnimatedSplashScreenCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: 'assets/images/logo_app.png',
      nextScreen: const OnBoardingScreen(),
      backgroundColor: Colors.white,
      splashTransition: SplashTransition.scaleTransition,
      pageTransitionType: PageTransitionType.bottomToTop,
      duration: 800,
      curve: Curves.easeInCirc,
      centered: true,
    );
  }
}
