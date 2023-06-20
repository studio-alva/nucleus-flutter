import 'package:flutter/material.dart';
import 'package:nucleus_ui_app/ui_features/pages/personalization/personalization_second_page.dart';
import '../ui_features/pages/personalization/personalization_first_page.dart';
import '../ui_features/pages/verification/verification_pages.dart';
import '../ui_features/pages/launchscreen/get_started_pages.dart';
import '../ui_features/pages/onboarding/onboarding_pages.dart';
import '../ui_features/pages/signin_signup/signin_pages_by_email.dart';
import '../ui_features/pages/signin_signup/signin_pages_by_number.dart';

Map<String, Widget Function(BuildContext)> routes = {
  GetStartedPages.launshScreen: (context) => const GetStartedPages(),
  OnboardingPages.onBoardingPages: (context) => const OnboardingPages(),
  SigninPagesByEmail.signEmail: (context) => const SigninPagesByEmail(),
  SignInPagesByNumber.signInNumber: (context) => const SignInPagesByNumber(),
  VerificationPages.verificationPages: (context) => const VerificationPages(),
  PersonalizationFirstPage.personalizationFirstPage: (context) =>
      const PersonalizationFirstPage(),
  PersonalizationSeconPages.personalizationSecondPage: (context) =>
      const PersonalizationSeconPages(),
};

String initialRoutes = PersonalizationSeconPages.personalizationSecondPage;
