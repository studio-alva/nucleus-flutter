import 'package:flutter/material.dart';
import 'package:nucleus_ui_app/config/config.dart';
import 'package:nucleus_ui_app/ui_features/widgets/appbar/appbar_primary.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:nucleus_ui_app/ui_features/widgets/button_primary.dart';

class SubScriptionPages extends StatelessWidget {
  const SubScriptionPages({super.key});
  static const String subscriptionPages = "subscriptionPages";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarPrimary(
        disableBack: true,
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text("Skip"),
          ),
        ],
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 30),
              child: const Text(
                "Get unlimited access to our programs.",
                style: AssetStyles.h2,
                textAlign: TextAlign.center,
              ),
            ),
            verticalSpace(30),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                "Take the first step towards a healthier and happier life.",
                style: AssetStyles.h4.copyWith(
                  fontWeight: FontWeight.normal,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            verticalSpace(20),
            CarouselSlider(
              options: CarouselOptions(
                disableCenter: true,
                enlargeCenterPage: true,
                aspectRatio: 1.4,
                enableInfiniteScroll: false,
              ),
              items: [
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AssetColors.skyWhite,
                  ),
                  child: Column(
                    children: [
                      Text(
                        "POPULAR",
                        style: AssetStyles.labelMdSmReg.copyWith(
                          color: AssetColors.inkDarkest,
                        ),
                      ),
                      verticalSpace(15),
                      const Text(
                        "Exercise Class",
                        style: AssetStyles.h2i,
                      ),
                      verticalSpace(15),
                      const Text(
                        "\$60.99",
                        style: AssetStyles.h1Utama,
                      ),
                      verticalSpace(15),
                      Text(
                        "For 1 Year",
                        style: AssetStyles.labelMdSmReg.copyWith(
                          color: AssetColors.inkDarkest,
                        ),
                      ),
                      verticalSpace(50),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 50),
                        child: Text(
                          "iOS, Android, Apple TV, Roku, Amazon Fire TV, web browser",
                          style: AssetStyles.labelMdSmReg.copyWith(
                            color: AssetColors.inkDarkest,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      verticalSpace(20),
                      ButtonPrimary(
                        onTap: () {},
                        text: "Subscribe",
                        height: 50,
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AssetColors.skyWhite,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AssetColors.skyWhite,
                  ),
                ),
              ],
            ),
            verticalSpace(20),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                "You will be charged \$9.99 (monthly plan) or \$60.99 (annual plan) through your iTunes account. You can cancel at any time if your not satisfied.",
                style: AssetStyles.h4.copyWith(
                  fontWeight: FontWeight.normal,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            verticalSpace(200),
          ],
        ),
      ),
    );
  }
}
