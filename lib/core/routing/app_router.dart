import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:radary/core/routing/route.dart';
import 'package:radary/features/home/ui/screens/home_screen.dart';
import '../../features/details/ui/screens/confirm_view.dart';
import '../../features/follow_report/ui/screens/follow_report_view.dart';
import '../../features/login/logic/cubit/login_cubit.dart';
import '../../features/login/ui/screens/login_screen.dart';
import '../../features/onboarding/ui/screens/on_boarding_screens.dart';
import '../../features/sign_up/logic/cubit/sigin_up_cubit.dart';
import '../../features/sign_up/ui/screens/sign_up_screen.dart';
import '../di/dependecy_injection.dart';

class AppRouter {
  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnBoardingScreen());

      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const LoginScreen(),
          ),
        );
      case Routes.signUpScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<SignupCubit>(),
            child: const SignupScreen(),
          ),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case Routes.ConfirmView:
        return MaterialPageRoute(builder: (_) => const ConfirmView());
      case Routes.followReport:
        return MaterialPageRoute(
          builder: (_) => const StepProgressView(
            curStep: 1, // Example value
            titles: ['Step 1', 'Step 2', 'Step 3'], // Example values
            width: 300, // Example value
            activeColor: Colors.blue, // Example value
          ),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(child: Text("Unknown route")),
          ),
        );
    }
  }
}
