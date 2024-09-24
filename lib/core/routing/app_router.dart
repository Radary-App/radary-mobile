import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:radary/core/routing/route.dart';
import 'package:radary/features/home/ui/screens/home_screen.dart';
import 'package:radary/features/profile/ui/screens/setting/screen/edit_setting.dart';
import '../../features/details/ui/screens/confirm_view.dart';
import '../../features/details/ui/screens/image_dettails_view_proplem.dart';
import '../../features/follow_report/ui/screens/follow_report_view.dart';
import '../../features/home/data/repo/add_proplem_repo.dart';
import '../../features/home/logic/cubit/add_proplem_cubit.dart';
import '../../features/home/logic/cubit/add_emergency_cubit.dart';
import '../../features/login/logic/cubit/login_cubit.dart';
import '../../features/login/ui/screens/login_screen.dart';
import '../../features/onboarding/ui/screens/on_boarding_screens.dart';
import '../../features/problem_review/data/repo/emergency_problem_repo.dart';
import '../../features/problem_review/logic/cubit/emergency_problem_response_cubit.dart';
import '../../features/profile/ui/screens/edit_profile/screen/edit_profile.dart';
import '../../features/sign_up/logic/cubit/sigin_up_cubit.dart';
import '../../features/sign_up/ui/screens/sign_up_screen.dart';
import '../di/dependecy_injection.dart';
import '../widgets/animated_splash_screen_custom.dart';

class AppRouter {
  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashScreen:
        return MaterialPageRoute(
            builder: (_) => const AnimatedSplashScreenCustom());
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
        return MaterialPageRoute(
          builder: (_) => MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => getIt<AddEmergencyCubit>(),
              ),
              BlocProvider(
                create: (context) => AddProplemCubit(getIt<AddProblemRepo>()),
              ),
              BlocProvider(
                create: (context) => EmergencyProblemResponseCubit(
                  getIt<EmergencyProblemResponseRepo>(),
                )..getData(),
              ),
            ],
            child: const HomeScreen(),
          ),
        );
      case Routes.imageDetails:
        final File? image = settings.arguments as File?;
        return MaterialPageRoute(
          builder: (_) => MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => AddProplemCubit(getIt<AddProblemRepo>()),
              ),
              BlocProvider(
                create: (context) => EmergencyProblemResponseCubit(getIt<EmergencyProblemResponseRepo>()),
              ),
            ],
            child: ImageDetailsViewProplem(
                image: image ?? File('assets/images/accident.png')),
          ),
        );
      case Routes.confirmView:
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
      case Routes.confirmReport:
        return MaterialPageRoute(
          builder: (_) => const ConfirmView(),
        );
      case Routes.editProfile:
        return MaterialPageRoute(
          builder: (_) => const EditProfile(),
        );
      case Routes.editSetting:
        return MaterialPageRoute(
          builder: (_) => const EditSetting(),
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
