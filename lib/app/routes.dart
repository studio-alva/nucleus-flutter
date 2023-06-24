import 'package:flutter/material.dart';

import '../ui_features/pages/home/all_items_pages.dart';
import '../ui_features/pages/home/inbox_pages_1.dart';
import '../ui_features/pages/home/main_home.dart';
import '../ui_features/pages/home/main_home_pages1.dart';
import '../ui_features/pages/location/location_pages.dart';
import '../ui_features/pages/personalization/personalization_second_page.dart';
import '../ui_features/pages/personalization/personalization_first_page.dart';
import '../ui_features/pages/verification/verification_pages.dart';
import '../ui_features/pages/launchscreen/get_started_pages.dart';
import '../ui_features/pages/onboarding/onboarding_pages.dart';
import '../ui_features/pages/signin_signup/signin_pages_by_email.dart';
import '../ui_features/pages/signin_signup/signin_pages_by_number.dart';
import '../ui_features/pages/coverages/discover_explore.dart';
import '../ui_features/pages/contents/contents_detail.dart';
import '../ui_features/pages/contents/content_post_detail.dart';
import '../ui_features/pages/highlights/highlight_pages.dart';
import '../ui_features/pages/search/search_pages.dart';

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
  ChooseLocationPages.locationPages: (context) => const ChooseLocationPages(),
  HomeAllItemsPages.homeAllItemsPages: (context) => const HomeAllItemsPages(),
  MainHomePages.mainHomePages: (context) => const MainHomePages(),
  InboxPages1.inboxPages: (context) => InboxPages1(),
  HomePages1.homePages: (context) => HomePages1(),
  DiscoverExplorePages.discoverPages: (context) => DiscoverExplorePages(),
  ContentDetailPages.contentDetail: (context) => const ContentDetailPages(),
  HighLightsPages.highlightsPages: (context) => const HighLightsPages(),
  ContentDetailPostPages.contentPostDetail: (context) =>
      ContentDetailPostPages(),
  SearchPages.searchPages: (context) => SearchPages(),
};

String initialRoutes = SearchPages.searchPages;
