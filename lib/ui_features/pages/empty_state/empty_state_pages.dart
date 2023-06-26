import 'package:flutter/material.dart';
import '../../../ui_features/widgets/appbar/appbar_primary.dart';
import '../../../ui_features/widgets/button_primary.dart';
import '../../../ui_features/widgets/navbar/navbar_custom1.dart';
import '../../../config/config.dart';

class EmptyStatePages extends StatelessWidget {
  const EmptyStatePages({super.key});
  static const String emptyStatePages = "emptyStatePages";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarPrimary(
        disableBack: true,
        text: "Saved Items",
        textStyle: AssetStyles.h3.copyWith(
          fontWeight: FontWeight.w500,
          color: Colors.black,
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              width: screenWidth(context) * 0.65,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Image(
                    image: AssetImage(AssetPaths.imageEmpty),
                  ),
                  const Text(
                    "No Saved Items",
                    style: AssetStyles.h2i,
                  ),
                  verticalSpace(15),
                  const Text(
                    "Tap the heart icon near any product and we’ll save it here for you.",
                    style: AssetStyles.labelMdSmReg1,
                    textAlign: TextAlign.center,
                  ),
                  verticalSpace(25),
                  ButtonPrimary(
                    onTap: () {
                      print("Discover");
                    },
                    width: screenWidth(context) * 0.4,
                    height: 40,
                    text: "Discover",
                  ),
                ],
              ),
            ),
          ),
          NavBarCustom1(),
        ],
      ),
    );
  }
}
