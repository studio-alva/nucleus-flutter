import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../config/config.dart';
import 'package:nucleus_ui_app/ui_features/widgets/appbar/appbar_primary.dart';

import '../../widgets/settings/button_setting_item.dart';

class AccountSettingPages extends StatelessWidget {
  const AccountSettingPages({super.key});
  static const String accountSettingPages = "accountSettingPages";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarPrimary(
        text: "Settings",
        textStyle: AssetStyles.h3.copyWith(
          fontWeight: FontWeight.w500,
          color: AssetColors.inkDarkest,
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            Expanded(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: screenWidth(context),
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: AssetColors.primaryColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Premium Membership",
                            style: AssetStyles.h2i.copyWith(
                              color: AssetColors.skyLight,
                            ),
                          ),
                          verticalSpace(5),
                          Text(
                            "Upgrade for more features",
                            style: AssetStyles.h4.copyWith(
                              fontWeight: FontWeight.normal,
                              color: AssetColors.primaryLightest,
                            ),
                          ),
                        ],
                      ),
                    ),
                    verticalSpace(20),
                    Text(
                      "Account",
                      style: AssetStyles.h2.copyWith(),
                    ),
                    verticalSpace(20),
                    ButtonSetiingItem(
                      icon: AssetPaths.iconAvatar,
                      text: "Profile",
                      prefixIcon: SvgPicture.asset(
                        AssetPaths.iconNext,
                      ),
                      onTap: () {
                        print("Hello Address");
                      },
                    ),
                    verticalSpace(10),
                    ButtonSetiingItem(
                      icon: AssetPaths.iconLock,
                      text: "Password",
                      prefixIcon: SvgPicture.asset(
                        AssetPaths.iconNext,
                      ),
                      onTap: () {},
                    ),
                    verticalSpace(10),
                    ButtonSetiingItem(
                      icon: AssetPaths.iconNotif,
                      prefixIcon: SvgPicture.asset(
                        AssetPaths.iconNext,
                      ),
                      text: "Notifications",
                      onTap: () {},
                    ),
                    verticalSpace(30),
                    Text(
                      "More",
                      style: AssetStyles.h2.copyWith(),
                    ),
                    verticalSpace(10),
                    ButtonSetiingItem(
                      icon: AssetPaths.iconRate,
                      prefixIcon: SvgPicture.asset(
                        AssetPaths.iconNext,
                      ),
                      text: "Rate & Review",
                      onTap: () {},
                    ),
                    verticalSpace(10),
                    ButtonSetiingItem(
                      icon: AssetPaths.iconHelp,
                      prefixIcon: SvgPicture.asset(
                        AssetPaths.iconNext,
                      ),
                      text: "Help",
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                print("Log Out");
              },
              child: const Text(
                "Log out",
                style: AssetStyles.labelMdMdReg,
              ),
            ),
            verticalSpace(20),
          ],
        ),
      ),
    );
  }
}
