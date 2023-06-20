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
    return Scaffold(
      appBar: AppBarPrimary(
        heightAppBar: 50,
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
                  verticalSpace(30),
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
            Row(
              children: [],
            ),
            const Text(
              "By continuing, you agree to our Terms of Service and Privacy Policy.",
              style: AssetStyles.labelMdSmReg,
            ),
            verticalSpace(20),
            ButtonPrimary(
              onTap: () {},
              height: 50,
              text: "Log In",
            ),
            verticalSpace(20),
          ],
        ),
      ),
    );
  }
}
