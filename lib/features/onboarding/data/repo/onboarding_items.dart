import 'package:flutter/material.dart';

import '../../../../core/helpers/util/assets_data.dart';
import '../../../../generated/l10n.dart';
import '../models/onboarding_info.dart';

class OnboardingItems {
  List<OnboardingInfo> getItems(BuildContext context) {
    return [
      OnboardingInfo(
          title: S.of(context).Accessibility,
          description: S.of(context).Message1,
          image: Assetsdata.welcome_1),
      OnboardingInfo(
          title: S.of(context).Message2,
          description: S.of(context).Answer2,
          image: Assetsdata.welcome_3),
      OnboardingInfo(
          title: S.of(context).Message3,
          description: S.of(context).Answer4,
          image: Assetsdata.welcome_3),
    ];
  }
}
