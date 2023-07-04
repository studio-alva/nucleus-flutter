import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../../../config/config.dart';
import '../../widgets/appbar/appbar_primary.dart';
import '../../widgets/button_primary.dart';
import '../../widgets/input/input_custom.dart';
import '../../widgets/text_button.dart';

class SigninPagesByEmail extends StatelessWidget {
  static const String signEmail = "SignInPagesByEmail";
  const SigninPagesByEmail({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();
    email.text = "juinal.william@gmail.com";
    return Scaffold(
      appBar: const AppBarPrimary(
        text: "Log In",
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
                  InputCustom(
                    controller: email,
                    label: const Text("Email"),
                    hintText: "Example@org.com",
                    inputType: TextInputType.emailAddress,
                  ),
                  verticalSpace(20),
                  InputCustom(
                    controller: password,
                    label: const Text("Password"),
                    inputType: TextInputType.text,
                    obsecure: true,
                  ),
                  verticalSpace(20),
                  TextButtonCustom(
                    text: "Forgot Password.?",
                    onTap: () {},
                  ),
                ],
              ),
            ),
            RichText(
              text: TextSpan(
                children: [
                  const TextSpan(
                    text: "By continuing, you agree to our ",
                    style: AssetStyles.labelTinyReguler,
                  ),
                  TextSpan(
                    text: "Terms of Service ",
                    style: AssetStyles.labelTinyReguler.copyWith(
                      color: AssetColors.primaryBase,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        print("Term Of Service");
                      },
                  ),
                  const TextSpan(
                    text: "and ",
                    style: AssetStyles.labelTinyReguler,
                  ),
                  TextSpan(
                    text: "and Privacy Policy.",
                    style: AssetStyles.labelTinyReguler.copyWith(
                      color: AssetColors.primaryBase,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        print("Pripacy Policy");
                      },
                  ),
                ],
              ),
            ),
            verticalSpace(20),
            ButtonPrimary(
              width: screenWidth(context) * 0.9,
              text: "Log In",
              onTap: () {},
            ),
            verticalSpace(30),
          ],
        ),
      ),
    );
  }
}
