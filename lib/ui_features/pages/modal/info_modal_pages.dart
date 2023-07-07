import 'package:flutter/material.dart';
import '../../../config/config.dart';
import '../../../ui_features/widgets/button_primary.dart';
import '../../../ui_features/widgets/text_button.dart';

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
            style: AssetStyles.t3,
          ),
          verticalSpace(20),
          const Text(
            "This is a short explanation about the new\nfeature of the app.",
            style: AssetStyles.labelMdRegular,
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
            width: screenWidth(context) * 0.9,
            text: "Check Out",
          ),
          verticalSpace(20),
          TextButtonCustom(
            text: "Maybe Later",
            style: AssetStyles.labelMdRegular.copyWith(
              color: AssetColors.inkDarker,
              fontWeight: FontWeight.w500,
            ),
            onTap: () {},
          ),
          // verticalSpace(20),
        ],
      ),
    );
  }
}
