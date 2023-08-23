import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../config/config.dart';
import '../../../ui_features/widgets/appbar/appbar_primary.dart';
import '../../../ui_features/widgets/button_primary.dart';
import '../../widgets/button/button_icon_rounded.dart';
import '../../widgets/home/detail_row.dart';

class ContentDetailPages extends StatelessWidget {
  const ContentDetailPages({super.key});
  static const String contentDetail = "contentDetail";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          width: screenWidth(context),
                          height: screenHeight(context) * 0.6,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(AssetPaths.imageDetail),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        verticalSpace(30),
                        const Text(
                          "Basic Yoga",
                          style: AssetStyles.t2,
                        ),
                        verticalSpace(20),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 20),
                          child: const Text(
                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                            textAlign: TextAlign.center,
                            style: AssetStyles.labelMdRegular,
                          ),
                        ),
                        verticalSpace(40),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            DetailRow(
                              title: "15 Minutes",
                              subTitle: "Duration",
                            ),
                            DetailRow(
                              title: "Beginner 1",
                              subTitle: "Level 1",
                            )
                          ],
                        ),
                        verticalSpace(20),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  margin: const EdgeInsets.only(bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ButtonIconRounded(
                        icon: AssetPaths.iconSettings,
                        onTap: () {},
                      ),
                      ButtonPrimary(
                        color: AssetColors.inkDarkest,
                        onTap: () {},
                        text: "Start",
                      ),
                      ButtonIconRounded(
                        icon: AssetPaths.iconMusic,
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 70,
            child: AppBarPrimary(
              backgroundColor: Colors.transparent,
              textStyle: AssetStyles.h3.copyWith(
                fontWeight: FontWeight.w500,
              ),
              iconColor: AssetColors.skyWhite,
              actions: [
                TextButton(
                  onPressed: () {},
                  child: SvgPicture.asset(
                    AssetPaths.iconShare,
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
