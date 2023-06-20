import 'package:flutter/material.dart';
import 'package:nucleus_ui_app/ui_features/widgets/button_primary.dart';
import 'package:nucleus_ui_app/ui_features/widgets/input/input_custom.dart';

import '../../../../config/asset_styles.dart';
import '../../../../config/ui_helper.dart';

class StepTwoPerson extends StatelessWidget {
  TextEditingController controllerEmail = TextEditingController();
  StepTwoPerson({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              children: [
                verticalSpace(40),
                const Text(
                  "What’s your email address?",
                  style: AssetStyles.h2,
                ),
                verticalSpace(20),
                InputCustom(
                  controller: controllerEmail,
                  inputType: TextInputType.emailAddress,
                  hintText: "input email address",
                  label: const Text("Email"),
                ),
                verticalSpace(50),
              ],
            ),
          ),
          ButtonPrimary(
            onTap: () {},
            text: "Continue",
            height: 50,
          ),
        ],
      ),
    );
  }
}
