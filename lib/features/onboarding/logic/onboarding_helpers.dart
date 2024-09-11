// lib/features/onboarding/helpers/onboarding_helpers.dart

import 'package:flutter/material.dart';

void skipToLastPage(PageController pageController, int totalItems) {
  pageController.animateToPage(
    totalItems - 1,
    duration: const Duration(milliseconds: 800),
    curve: Curves.easeInOut,
  );
}
