import 'package:flutter/material.dart';
import '../../../config/config.dart';
import '../../../ui_features/widgets/button/button_icon_rounded.dart';
import '../../../ui_features/widgets/button_primary.dart';
import '../../widgets/cart/cart_detail.dart';

class AddToCartPages extends StatelessWidget {
  const AddToCartPages({super.key});
  static const String addToCartPages = "addToCartPages";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Stack(
              children: [
                SizedBox(
                  width: screenWidth(context),
                  height: screenHeight(context) * 0.6,
                  child: const Image(
                    image: AssetImage(
                      AssetPaths.imageCart,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    margin: const EdgeInsets.only(right: 25, top: 45),
                    child: ButtonIconRounded(
                      icon: AssetPaths.iconClose,
                      onTap: () {},
                      color: AssetColors.skyWhite,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: screenWidth(context),
              height: screenHeight(context) * 0.5,
              decoration: const BoxDecoration(
                color: AssetColors.skyWhite,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  verticalSpace(10),
                  Center(
                    child: Container(
                      width: 100,
                      height: 4,
                      color: AssetColors.inkLighter,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Nike React Infinity Run\nFlyknit 2",
                            style: AssetStyles.t3.copyWith(
                              height: 1.4,
                            ),
                          ),
                          verticalSpace(15),
                          const Text(
                            "\$250.00 + Delivery & Tax",
                            style: AssetStyles.labelSmReguler,
                          ),
                          verticalSpace(20),
                          CartDetail(
                            title: "Size",
                            caption: "M 10 / W 11.5",
                          ),
                          verticalSpace(20),
                          CartDetail(
                            title: "Color",
                            caption: "Gray",
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(20),
                    child: ButtonPrimary(
                      onTap: () {},
                      text: "Buy",
                      height: 50,
                      color: AssetColors.inkDarkest,
                      width: screenWidth(context) * 0.9,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
