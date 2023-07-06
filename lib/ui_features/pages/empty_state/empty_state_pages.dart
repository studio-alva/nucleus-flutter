import 'package:flutter/material.dart';
import 'package:nucleus_ui_app/ui_features/model/navbar_model.dart';
import '../../../ui_features/widgets/appbar/appbar_primary.dart';
import '../../../ui_features/widgets/button_primary.dart';
import '../../../config/config.dart';
import '../../widgets/navbar/navbar_custom1.dart';

class EmptyStatePages extends StatelessWidget {
  EmptyStatePages({super.key});
  static const String emptyStatePages = "emptyStatePages";

  final List<NavbarModel> navbars = [
    NavbarModel(icon: "", title: "", status: true),
    NavbarModel(icon: "", title: "", status: true),
    NavbarModel(icon: "", title: "", status: false),
  ];
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
            child: SizedBox(
              width: screenWidth(context) * 0.65,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Image(
                    image: AssetImage(AssetPaths.imageEmpty),
                  ),
                  Text(
                    "No Saved Items",
                    style: AssetStyles.labelLgRegular
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  verticalSpace(15),
                  const Text(
                    "Tap the heart icon near any product\nand we’ll save it here for you.",
                    style: AssetStyles.labelSmReguler,
                    textAlign: TextAlign.center,
                  ),
                  verticalSpace(25),
                  ButtonPrimary(
                    onTap: () {
                      print("Discover");
                    },
                    text: "Discover",
                  ),
                ],
              ),
            ),
          ),
          NavBarCustom1(
            data: navbars,
            height: 50,
          ),
        ],
      ),
    );
  }
}
