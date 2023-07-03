import 'package:flutter/material.dart';
import 'package:nucleus_ui_app/config/asset_colors.dart';
import 'package:nucleus_ui_app/config/asset_paths.dart';
import 'package:nucleus_ui_app/config/asset_styles.dart';
import 'package:nucleus_ui_app/ui_features/widgets/button_primary.dart';
import 'package:nucleus_ui_app/ui_features/widgets/text_button.dart';

import '../../../config/ui_helper.dart';

class InfoModalPages extends StatelessWidget {
  const InfoModalPages({super.key});
  static const String infoModalPages = "infoModalPages";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: ElevatedButton(
        child: const Text("Show Modal"),
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => const ModalInfoBody(),
          );
        },
      ),
    ));
  }
}

class ModalInfoBody extends StatelessWidget {
  const ModalInfoBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 40,
        horizontal: 20,
      ),
      decoration: const BoxDecoration(),
      child: Column(
        children: [
          const Text(
            "Introducing New Feature",
            style: AssetStyles.h2,
          ),
          verticalSpace(20),
          Text(
            "This is a short explanation about the new feature of the app.",
            style: AssetStyles.h3.copyWith(
              fontWeight: FontWeight.normal,
            ),
            textAlign: TextAlign.center,
          ),
          Expanded(
            child: SizedBox(
              width: screenWidth(context) * 0.7,
              height: 200,
              child: const Image(
                image: AssetImage(
                  AssetPaths.imageModel,
                ),
              ),
            ),
          ),
          verticalSpace(20),
          ButtonPrimary(
            onTap: () {},
            text: "Check Out",
            height: 50,
          ),
          verticalSpace(20),
          TextButtonCustom(
            text: "Maybe Later",
            style: AssetStyles.labelMdMdReg.copyWith(
              color: AssetColors.inkDarkest,
            ),
            onTap: () {},
          ),
          // verticalSpace(20),
        ],
      ),
    );
  }
}
