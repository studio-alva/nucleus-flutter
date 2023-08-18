import 'package:flutter/material.dart';
import 'package:nucleus_ui_app/ui_features/pages/menu_pages.dart';

import '../ui_features/pages/bottom_sheet/add_to_cart_pages.dart';
import '../ui_features/pages/checkout/checkout_pages.dart';
import '../ui_features/pages/checkout/review_purchase_pages.dart';
import '../ui_features/pages/contents/content_post_detail.dart';
import '../ui_features/pages/contents/contents_detail.dart';
import '../ui_features/pages/coverages/discover_explore.dart';
import '../ui_features/pages/empty_state/empty_state_pages.dart';
import '../ui_features/pages/filter/filter_pages.dart';
import '../ui_features/pages/highlights/highlight_pages.dart';
import '../ui_features/pages/home/all_items_pages.dart';
import '../ui_features/pages/home/chat_pages.dart';
import '../ui_features/pages/home/inbox_pages_1.dart';
import '../ui_features/pages/home/main_home.dart';
import '../ui_features/pages/home/main_home_pages1.dart';
import '../ui_features/pages/launchscreen/get_started_pages.dart';
import '../ui_features/pages/location/location_pages.dart';
import '../ui_features/pages/map/map_pages.dart';
import '../ui_features/pages/modal/confirmation_modal_pages.dart';
import '../ui_features/pages/modal/filter_modal_pages.dart';
import '../ui_features/pages/modal/info_modal_pages.dart';
import '../ui_features/pages/modal/sort_modal_pages.dart';
import '../ui_features/pages/onboarding/onboarding_pages.dart';
import '../ui_features/pages/personalization/personalization_first_page.dart';
import '../ui_features/pages/personalization/personalization_second_page.dart';
import '../ui_features/pages/product/product_detail_pages.dart';
import '../ui_features/pages/search/search_pages.dart';
import '../ui_features/pages/search/search_result.dart';
import '../ui_features/pages/settings/account_setting_pages.dart';
import '../ui_features/pages/settings/main_setting_pages.dart';
import '../ui_features/pages/settings/view_profile_pages.dart';
import '../ui_features/pages/signin_signup/signin_pages_by_email.dart';
import '../ui_features/pages/signin_signup/signin_pages_by_number.dart';
import '../ui_features/pages/subscription/subscription_pages.dart';
import '../ui_features/pages/verification/verification_pages.dart';
import '../ui_features/pages/video_call/video_call_pages.dart';

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
  SearchResultPgaes.searchResult: (context) => const SearchResultPgaes(),
  AddToCartPages.addToCartPages: (context) => const AddToCartPages(),
  EmptyStatePages.emptyStatePages: (context) => EmptyStatePages(),
  MapPages.mapPages: (context) => const MapPages(),
  FilterPages.filterPages: (context) => const FilterPages(),
  ReviewPurchasePages.reviewPurchasePages: (context) =>
      const ReviewPurchasePages(),
  CheckoutPages.checkoutPages: (context) => const CheckoutPages(),
  MainSettingPages.mainSettingPages: (context) => const MainSettingPages(),
  AccountSettingPages.accountSettingPages: (context) =>
      const AccountSettingPages(),
  ViewProfilePages.viewProfilePages: (context) => const ViewProfilePages(),
  InfoModalPages.infoModalPages: (context) => const InfoModalPages(),
  ConfirmationModalPages.confirmationModalPages: (context) =>
      const ConfirmationModalPages(),
  SortModalPages.sortModalPages: (context) => SortModalPages(),
  FilterModalPages.filterModalPages: (context) => FilterModalPages(),
  ChatPages.chatPages: (context) => ChatPages(),
  VideoCallPages.videoCallPages: (context) => const VideoCallPages(),
  SubScriptionPages.subscriptionPages: (context) => const SubScriptionPages(),
  ProductDetailPages.productDetailPages: (context) =>
      const ProductDetailPages(),
  MenuHome.menuPagesAll: (context) => MenuHome(),
};

String initialRoutes = MenuHome.menuPagesAll;

final List<String> halaman = [
  GetStartedPages.launshScreen,
  OnboardingPages.onBoardingPages,
  SigninPagesByEmail.signEmail,
  SignInPagesByNumber.signInNumber,
  VerificationPages.verificationPages,
  PersonalizationFirstPage.personalizationFirstPage,
  PersonalizationSeconPages.personalizationSecondPage,
  ChooseLocationPages.locationPages,
  HomeAllItemsPages.homeAllItemsPages,
  MainHomePages.mainHomePages,
  InboxPages1.inboxPages,
  HomePages1.homePages,
  DiscoverExplorePages.discoverPages,
  ContentDetailPages.contentDetail,
  HighLightsPages.highlightsPages,
  ContentDetailPostPages.contentPostDetail,
  SearchPages.searchPages,
  SearchResultPgaes.searchResult,
  AddToCartPages.addToCartPages,
  EmptyStatePages.emptyStatePages,
  MapPages.mapPages,
  FilterPages.filterPages,
  ReviewPurchasePages.reviewPurchasePages,
  CheckoutPages.checkoutPages,
  MainSettingPages.mainSettingPages,
  AccountSettingPages.accountSettingPages,
  ViewProfilePages.viewProfilePages,
  InfoModalPages.infoModalPages,
  ConfirmationModalPages.confirmationModalPages,
  SortModalPages.sortModalPages,
  FilterModalPages.filterModalPages,
  ChatPages.chatPages,
  VideoCallPages.videoCallPages,
  SubScriptionPages.subscriptionPages,
  ProductDetailPages.productDetailPages,
];

final List<Map<String, dynamic>> pages = [
  {
    "title": GetStartedPages.launshScreen,
    "page": const GetStartedPages(),
  },
  {
    "title": OnboardingPages.onBoardingPages,
    "page": const OnboardingPages(),
  },
  {
    "title": SigninPagesByEmail.signEmail,
    "page": const SigninPagesByEmail(),
  },
  {
    "title": SignInPagesByNumber.signInNumber,
    "page": const SignInPagesByNumber()
  },
  {
    "title": VerificationPages.verificationPages,
    "page": const VerificationPages()
  },
  {
    "title": PersonalizationFirstPage.personalizationFirstPage,
    "page": const PersonalizationFirstPage()
  },
  {
    "title": PersonalizationSeconPages.personalizationSecondPage,
    "page": const PersonalizationSeconPages()
  },
  {
    "title": ChooseLocationPages.locationPages,
    "page": const ChooseLocationPages()
  },
  {
    "title": HomeAllItemsPages.homeAllItemsPages,
    "page": const HomeAllItemsPages()
  },
  {
    "title": MainHomePages.mainHomePages,
    "page": const MainHomePages(),
  },
  {
    "title": InboxPages1.inboxPages,
    "page": InboxPages1(),
  },
  {
    "title": HomePages1.homePages,
    "page": HomePages1(),
  },
  {
    "title": DiscoverExplorePages.discoverPages,
    "page": DiscoverExplorePages(),
  },
  {
    "title": ContentDetailPages.contentDetail,
    "page": const ContentDetailPages()
  },
  {"title": HighLightsPages.highlightsPages, "page": const HighLightsPages()},
  {
    "title": ContentDetailPostPages.contentPostDetail,
    "page": ContentDetailPostPages()
  },
  {
    "title": SearchPages.searchPages,
    "page": SearchPages(),
  },
  {
    "title": SearchResultPgaes.searchResult,
    "page": const SearchResultPgaes(),
  },
  {
    "title": AddToCartPages.addToCartPages,
    "page": const AddToCartPages(),
  },
  {
    "title": EmptyStatePages.emptyStatePages,
    "page": EmptyStatePages(),
  },
  {
    "title": MapPages.mapPages,
    "page": const MapPages(),
  },
  {
    "title": FilterPages.filterPages,
    "page": const FilterPages(),
  },
  {
    "title": ReviewPurchasePages.reviewPurchasePages,
    "page": const ReviewPurchasePages()
  },
  {
    "title": CheckoutPages.checkoutPages,
    "page": const CheckoutPages(),
  },
  {
    "title": MainSettingPages.mainSettingPages,
    "page": const MainSettingPages()
  },
  {
    "title": AccountSettingPages.accountSettingPages,
    "page": const AccountSettingPages(),
  },
  {
    "title": ViewProfilePages.viewProfilePages,
    "page": const ViewProfilePages(),
  },
  {
    "title": InfoModalPages.infoModalPages,
    "page": const InfoModalPages(),
  },
  {
    "title": ConfirmationModalPages.confirmationModalPages,
    "page": const ConfirmationModalPages(),
  },
  {
    "title": SortModalPages.sortModalPages,
    "page": SortModalPages(),
  },
  {
    "title": FilterModalPages.filterModalPages,
    "page": FilterModalPages(),
  },
  {
    "title": ChatPages.chatPages,
    "page": ChatPages(),
  },
  {
    "title": VideoCallPages.videoCallPages,
    "page": const VideoCallPages(),
  },
  {
    "title": SubScriptionPages.subscriptionPages,
    "page": const SubScriptionPages()
  },
  {
    "title": ProductDetailPages.productDetailPages,
    "page": const ProductDetailPages()
  }
];
