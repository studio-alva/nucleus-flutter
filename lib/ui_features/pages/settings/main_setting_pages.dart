import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nucleus_ui_app/config/asset_paths.dart';
import 'package:nucleus_ui_app/config/config.dart';
import 'package:nucleus_ui_app/ui_features/widgets/button_primary.dart';
import 'package:nucleus_ui_app/ui_features/widgets/map/place_item.dart';
import 'package:nucleus_ui_app/ui_features/widgets/navbar/navbar_custom1.dart';
import 'package:nucleus_ui_app/ui_features/widgets/settings/button_setting_item_no_icon.dart';

import '../../widgets/settings/button_setting_item.dart';

class MainSettingPages extends StatelessWidget {
  const MainSettingPages({super.key});
  static const String mainSettingPages = "mainSettingPages";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(top: 30),
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const SizedBox(
                            height: 64,
                            width: 64,
                            child: CircleAvatar(
                              backgroundImage: AssetImage(
                                AssetPaths.imageAvatar1,
                              ),
                            ),
                          ),
                          horizontalSpace(20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "William",
                                style: AssetStyles.h2,
                              ),
                              verticalSpace(5),
                              Text(
                                "william@studioalva.co",
                                style: AssetStyles.h3.copyWith(
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      verticalSpace(30),
                      ButtonPrimary(
                        onTap: () {},
                        height: 50,
                        color: AssetColors.primaryLightest,
                        style: AssetStyles.h3.copyWith(
                          color: AssetColors.primaryColor,
                          fontWeight: FontWeight.normal,
                        ),
                        text: "View Profile",
                      ),
                      verticalSpace(30),
                      ButtonSetiingItem(
                        icon: AssetPaths.iconPlace,
                        text: "Address",
                        prefixIcon: Container(),
                        onTap: () {
                          print("Hello Address");
                        },
                      ),
                      verticalSpace(10),
                      ButtonSetiingItem(
                        icon: AssetPaths.iconPayment,
                        text: "Payment Method",
                        prefixIcon: Container(),
                        onTap: () {},
                      ),
                      verticalSpace(10),
                      ButtonSetiingItem(
                        icon: AssetPaths.iconHelp,
                        prefixIcon: Container(),
                        text: "Help",
                        onTap: () {},
                      ),
                      verticalSpace(10),
                      ButtonSetiingItem(
                        icon: AssetPaths.iconSettings,
                        prefixIcon: Container(),
                        text: "Settings",
                        onTap: () {},
                      ),
                      verticalSpace(10),
                      const Divider(
                        thickness: 2,
                      ),
                      verticalSpace(10),
                      ButtonSettingItemNoIcon(
                        text: "About",
                        onTap: () {},
                      ),
                      verticalSpace(10),
                      ButtonSettingItemNoIcon(
                        text: "Logout",
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
              ),
              // const NavBarCustom1(),
            ],
          ),
        ),
      ),
    );
  }
}
