import 'package:flutter/material.dart';

import '../../../../generated/l10n.dart';
import '../models/onboarding_info.dart';

class OnboardingItems {
  List<OnboardingInfo> getItems(BuildContext context) {
    return [
      OnboardingInfo(
          title: S.of(context).Accessibility,
          description: S.of(context).AccessibilityDescription,
          image: "assets/svgs/Onboarding_1.svg"),
      OnboardingInfo(
          title: S.of(context).Answer1,
          description: S.of(context).Answer2,
          image: "assets/svgs/Onboarding_2.svg"),
      OnboardingInfo(
          title: S.of(context).Answer3,
          description: S.of(context).Answer4,
          image: "assets/svgs/Onboarding_3.svg"),
    ];
  }
}
