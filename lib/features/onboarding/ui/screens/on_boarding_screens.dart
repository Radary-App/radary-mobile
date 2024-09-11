// lib/features/onboarding/ui/screens/onboarding_screen.dart

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:radary/core/helpers/extensions/app_navigotion.dart';


import '../../../../core/routing/route.dart';
import '../../../../core/theming/app_text_styles.dart';
import '../../../../generated/l10n.dart';
import '../../data/models/onboarding_info.dart';
import '../../data/repo/onboarding_items.dart';
import '../../logic/onboarding_helpers.dart';
import '../widgets/onboarding_button.dart';
import '../widgets/onboarding_content.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  OnBoardingScreenState createState() => OnBoardingScreenState();
}

class OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController _pageController = PageController();
  bool _isLastPage = false;

  void _updateIsLastPage(int currentPage, int totalPages) {
    setState(() {
      _isLastPage = currentPage == totalPages - 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    final onboardingItems = OnboardingItems();
    final List<OnboardingInfo> items = onboardingItems.getItems(context);

    return Scaffold(
      body: SafeArea(
        child: PageView.builder(
          physics: const NeverScrollableScrollPhysics(),
          onPageChanged: (value) => _updateIsLastPage(value, items.length),
          itemCount: items.length,
          controller: _pageController,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    _buildSkipButton(items.length),
                    OnboardingContent(
                      item: items[index],
                      pageController: _pageController,
                    ),
                    SizedBox(height: 30.h),
                    _buildNextButton(context),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildSkipButton(int totalItems) {
    return Align(
      alignment: Alignment.topRight,
      child: TextButton(
        onPressed: () => skipToLastPage(
            _pageController, totalItems), // استخدام وظيفة المساعد
        child: Text(
          S.of(context).Skip,
          style: AppTextStyles.font20Gray100Regular,
        ),
      ),
    );
  }

  Widget _buildNextButton(BuildContext context) {
    return _isLastPage
        ? OnBoardingeButton(
            titl: S.of(context).getStarted,
            onPressed: () => context.pushNamed(Routes.signUpScreen),
          )
        : OnBoardingeButton(
            titl: S.of(context).next,
            onPressed: () => _pageController.nextPage(
              duration: const Duration(milliseconds: 400),
              curve: Curves.easeIn,
            ),
          );
  }
}
