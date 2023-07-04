import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nucleus_ui_app/ui_features/widgets/button_primary.dart';
import 'package:nucleus_ui_app/ui_features/widgets/navbar/navbar_custom1.dart';
import '../../../config/config.dart';
import '../../widgets/appbar/appbar_primary.dart';
import '../../widgets/settings/button_twolist_item.dart';
import '../../widgets/settings/header_setting_item.dart';
import '../../widgets/settings/list_view_setting_item.dart';

class ViewProfilePages extends StatelessWidget {
  const ViewProfilePages({super.key});
  static const String viewProfilePages = "viewProfilePages";

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
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    width: 80,
                    height: 80,
                    child: CircleAvatar(
                      backgroundImage: AssetImage(
                        AssetPaths.imageAvatar1,
                      ),
                    ),
                  ),
                  verticalSpace(20),
                  ButtonPrimary(
                    onTap: () {},
                    text: "Change",
                    width: screenWidth(context) * 0.25,
                    height: 40,
                    color: AssetColors.primaryLightest,
                    style: AssetStyles.labelMdMdReg.copyWith(
                      color: AssetColors.primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  verticalSpace(20),
                  const Divider(
                    thickness: 2,
                  ),
                  ViewProfileListItem(
                    leftText: "First Name",
                    rightText: "Juinal",
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                  ViewProfileListItem(
                    leftText: "Last Name",
                    rightText: "Enter Last name",
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                  ViewProfileListItem(
                    leftText: "Location",
                    rightText: "Indonesia",
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                  ViewProfileListItem(
                    leftText: "Location",
                    rightText: "Indonesia",
                  ),
                  HeaderSettingItem(
                    title: "ACCOUNT INFORMATION",
                  ),
                  ViewProfileListItem(
                    leftText: "Email",
                    rightText: "juinal@studioalva.co",
                  ),
                  HeaderSettingItem(
                    title: "INTERNATIONAL PREFERENCES",
                  ),
                  ButtonTwoListItem(
                    title: "Language",
                    subTitle: "English",
                  ),
                ],
              ),
            ),
          ),
          // const NavBarCustom1(),
        ],
      ),
    );
  }
}
