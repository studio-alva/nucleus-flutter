import 'package:flutter/material.dart';
import '../../../config/config.dart';
import '../../../ui_features/pages/onboarding/onboarding_pages.dart';
import '../../../ui_features/widgets/button_primary.dart';

class GetStartedPages extends StatelessWidget {
  static const String launshScreen = "launchScreen";
  const GetStartedPages({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: AssetColors.bgSecondary,
        ),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: size.width,
                height: size.height * 0.8,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(AssetPaths.imageGetStarted),
                      fit: BoxFit.cover),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: const EdgeInsets.only(
                  bottom: 25,
                ),
                width: size.width,
                height: size.height * 0.9,
                child: Column(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            "Keepyoga",
                            style: AssetStyles.h2.copyWith(
                                color: AssetColors.inkDarkest.withOpacity(0.3)),
                          ),
                          Container(
                            margin: const EdgeInsets.all(20),
                            child: const Text(
                              "Practice yoga whenever you want",
                              style: AssetStyles.h1,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                    ButtonPrimary(
                      height: 50,
                      width: size.width * 0.8,
                      text: "Get Started",
                      style: AssetStyles.labelButtonPrimary.copyWith(
                        color: AssetColors.inkDarkest,
                        fontWeight: FontWeight.bold,
                      ),
                      color: AssetColors.skyWhite,
                      onTap: () {
                        nextScreen(OnboardingPages.onBoardingPages);
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
