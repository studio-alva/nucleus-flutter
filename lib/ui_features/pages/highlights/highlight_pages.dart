import 'package:flutter/material.dart';
import 'package:nucleus_ui_app/config/config.dart';
import 'package:nucleus_ui_app/ui_features/widgets/appbar/appbar_primary.dart';

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
          Container(
            width: screenWidth(context),
            height: screenHeight(context),
            child: Column(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      verticalSpace(10),
                      AppBarPrimary(
                        text: "Highlights",
                        textStyle: AssetStyles.h3.copyWith(
                          color: AssetColors.inkDarkest,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      verticalSpace(30),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 30),
                        child: const Text(
                          "How New York region became the new epicenter ",
                          style: AssetStyles.h2,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      verticalSpace(30),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 30),
                        child: Text(
                          "Is New York City unique in the country’s coronavirus fight — or is it just one of the first?",
                          style: AssetStyles.h3.copyWith(
                            fontWeight: FontWeight.normal,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      verticalSpace(30),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 30),
                        child: const Text(
                          "by John Cassidy  ·  March 5, 2020",
                          style: AssetStyles.h4,
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
