import 'package:flutter/material.dart';
import '../../../config/config.dart';
import '../../../ui_features/model/navbar_model.dart';
import '../../../ui_features/widgets/button_primary.dart';
import '../../../ui_features/widgets/settings/button_setting_item_no_icon.dart';
import '../../widgets/navbar/navbar_custom1.dart';
import '../../widgets/settings/button_setting_item.dart';

class MainSettingPages extends StatelessWidget {
  const MainSettingPages({super.key});
  static const String mainSettingPages = "mainSettingPages";

  @override
  Widget build(BuildContext context) {
    final List<NavbarModel> navbars = [
      NavbarModel(icon: "", title: "", status: false),
      NavbarModel(icon: "", title: "", status: false),
      NavbarModel(icon: "", title: "", status: false),
      NavbarModel(icon: "", title: "", status: true),
    ];
    return Scaffold(
      body: SafeArea(
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
                          height: 50,
                          width: 50,
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
                              style: AssetStyles.t3,
                            ),
                            verticalSpace(5),
                            const Text(
                              "william@studioalva.co",
                              style: AssetStyles.labelMdRegular,
                            ),
                          ],
                        ),
                      ],
                    ),
                    verticalSpace(30),
                    ButtonPrimary(
                      width: screenWidth(context) * 0.9,
                      onTap: () {},
                      height: 40,
                      color: AssetColors.primaryLightest,
                      style: AssetStyles.labelMdRegular.copyWith(
                        color: AssetColors.primaryBase,
                      ),
                      text: "View Profile",
                    ),
                    verticalSpace(20),
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
                    const Divider(),
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
            NavBarCustom1(
              data: [...navbars],
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
