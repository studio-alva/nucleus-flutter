import 'package:flutter/material.dart';
import 'package:nucleus_ui_app/config/nav_services.dart';
import 'package:nucleus_ui_app/ui_features/pages/signin_signup/signin_pages_by_number.dart';
import '../../../config/config.dart';
import 'package:nucleus_ui_app/ui_features/widgets/button_primary.dart';
import 'package:nucleus_ui_app/ui_features/widgets/text_button.dart';

class OnboardingPages extends StatefulWidget {
  static const String onBoardingPages = "onBoardingPages";
  const OnboardingPages({super.key});

  @override
  State<OnboardingPages> createState() => _OnboardingPagesState();
}

class _OnboardingPagesState extends State<OnboardingPages> {
  List<int> dotted = [1, 2, 4, 5];
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    double topBar = MediaQuery.of(context).padding.top;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: size.height - topBar,
          width: size.width,
          margin: const EdgeInsets.only(bottom: 50),
          child: Column(
            children: [
              Expanded(
                child: LayoutBuilder(builder: (ctx, constraints) {
                  return OnBoardingFirstPage(constraints: constraints);
                }),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: dotted
                    .map(
                      (e) => Container(
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: (e == 5)
                              ? AssetColors.primaryColor
                              : AssetColors.skyLight,
                        ),
                      ),
                    )
                    .toList(),
              ),
              const SizedBox(
                height: 20,
              ),
              ButtonPrimary(
                height: 50,
                width: size.width * 0.8,
                color: AssetColors.primaryColor,
                text: "Get Started",
                style: AssetStyles.labelButtonPrimary,
                onTap: () {
                  print("OK");
                },
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Have an account ? ",
                    style: AssetStyles.labelButtonPrimary
                        .copyWith(color: AssetColors.inkDarkest),
                  ),
                  TextButtonCustom(
                    text: "Login",
                    onTap: () {
                      nextScreen(SignInPagesByNumber.signInNumber);
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
