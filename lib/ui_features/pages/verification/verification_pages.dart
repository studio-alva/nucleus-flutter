import 'package:flutter/material.dart';
import 'package:nucleus_ui_app/config/config.dart';
import 'package:nucleus_ui_app/ui_features/widgets/appbar/appbar_primary.dart';
import 'package:nucleus_ui_app/ui_features/widgets/button_primary.dart';
import 'package:nucleus_ui_app/ui_features/widgets/text_button.dart';

import '../../widgets/input/input_rounded.dart';

class VerificationPages extends StatelessWidget {
  static const String verificationPages = "verificationPages";
  const VerificationPages({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController v1 = TextEditingController();
    TextEditingController v2 = TextEditingController();
    TextEditingController v3 = TextEditingController();
    TextEditingController v4 = TextEditingController();

    List<TextEditingController> controller = [
      v1,
      v2,
      v3,
      v4,
    ];

    List<bool> active = [
      false,
      false,
      false,
      true,
    ];

    return Scaffold(
      appBar: AppBarPrimary(
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text("Change Number"),
          ),
          horizontalSpace(10),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        width: screenWidth(context),
        height: screenHeight(context),
        child: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  const Text(
                    "Enter authentication code",
                    style: AssetStyles.h2,
                  ),
                  verticalSpace(10),
                  Text(
                    "Enter the 4-digit that we have sent via the phone number +62 813-8172-5977",
                    style: AssetStyles.h3.copyWith(
                      fontWeight: FontWeight.normal,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  verticalSpace(30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [0, 1, 2, 3].map((e) {
                      controller[e].text = e.toString();

                      return InputVerification(
                        edgeInsetsGeometry: const EdgeInsets.symmetric(
                          horizontal: 10,
                        ),
                        isActive: active[e],
                        controller: controller[e],
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
            ButtonPrimary(
              height: 50,
              onTap: () {},
              text: "Continue",
            ),
            verticalSpace(20),
            TextButtonCustom(
              onTap: () {},
              text: "Resend Code",
            ),
            verticalSpace(20),
          ],
        ),
      ),
    );
  }
}
