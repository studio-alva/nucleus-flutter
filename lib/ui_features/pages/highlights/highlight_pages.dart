import 'package:flutter/material.dart';
import '../../../config/config.dart';
import '../../../ui_features/widgets/appbar/appbar_primary.dart';

class HighLightsPages extends StatelessWidget {
  const HighLightsPages({super.key});
  static const String highlightsPages = "highlightsPages";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AssetColors.bgHighLight,
      body: Stack(
        children: [
          const Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              width: double.infinity,
              child: Image(
                image: AssetImage(AssetPaths.imageHighlight),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          SizedBox(
            width: screenWidth(context),
            height: screenHeight(context),
            child: Column(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      verticalSpace(10),
                      const AppBarPrimary(
                        text: "Highlights",
                      ),
                      verticalSpace(30),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 30),
                        child: const Text(
                          "How New York region\nbecame the new epicenter ",
                          style: AssetStyles.t3,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      verticalSpace(30),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 30),
                        child: const Text(
                          "Is New York City unique in the country’s\ncoronavirus fight — or is it just one of the\nfirst?",
                          style: AssetStyles.labelMdRegular,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      verticalSpace(30),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 30),
                        child: Text(
                          "by John Cassidy  ·  March 5, 2020",
                          style: AssetStyles.labelSmReguler
                              .copyWith(fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
                verticalSpace(10),
                Container(
                  margin: const EdgeInsets.only(bottom: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [1, 2, 3, 4, 5]
                        .map((e) => Container(
                              width: 50,
                              height: 3,
                              color: AssetColors.skyWhite,
                              margin: const EdgeInsets.only(right: 10),
                            ))
                        .toList(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
