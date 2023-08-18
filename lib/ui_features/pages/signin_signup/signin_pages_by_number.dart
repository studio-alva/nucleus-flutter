import 'package:flutter/material.dart';

import '../../../config/config.dart';
import '../../../ui_features/pages/signin_signup/signin_pages_by_email.dart';
import '../../../ui_features/widgets/button_primary.dart';
import '../../../ui_features/widgets/input/flag_country_number.dart';
import '../../../ui_features/widgets/text_button.dart';
import '../../widgets/appbar/appbar_primary.dart';
import '../../widgets/input/input_custom.dart';

class SignInPagesByNumber extends StatelessWidget {
  static const String signInNumber = "signInNumber";
  const SignInPagesByNumber({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    TextEditingController numberController = TextEditingController();
    return Scaffold(
      appBar: AppBarPrimary(
        heightAppBar: 50,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        width: screenWidth(context),
        height: screenHeight(context),
        child: Column(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  verticalSpace(5),
                  const Text(
                    "Welcome Back.",
                    style: AssetStyles.t2,
                  ),
                  verticalSpace(10),
                  const Text(
                    "Log in to your account",
                    style: AssetStyles.labelMdRegular,
                  ),
                  verticalSpace(30),
                  Container(
                    width: screenWidth(context),
                  ),
                  InputCustom(
                    controller: numberController,
                    prefixIcon: const FlagCountryNumber(),
                    hintText: "Input Text",
                  ),
                  verticalSpace(15),
                  Text(
                    "You will receive an SMS verification that may apply message and data rates.",
                    style: AssetStyles.labelTinyReguler.copyWith(
                      color: AssetColors.inkLight,
                    ),
                  ),
                ],
              ),
            ),
            ButtonPrimary(
              width: screenWidth(context) * 0.8,
              onTap: () {},
              text: "Log In",
            ),
            verticalSpace(20),
            TextButtonCustom(
              text: "Use email, instead",
              onTap: () {
                nextScreenByName(SigninPagesByEmail.signEmail);
              },
            ),
            verticalSpace(30),
          ],
        ),
      ),
    );
  }
}
