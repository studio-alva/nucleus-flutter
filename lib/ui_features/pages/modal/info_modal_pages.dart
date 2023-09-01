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
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
            ),
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
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: 48,
              height: 5,
              margin: const EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: AssetColors.skyBase,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 40,
              horizontal: 20,
            ),
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
          ),
        ],
      ),
    );
  }
}
