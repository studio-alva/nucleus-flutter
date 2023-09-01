import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nucleus_ui_app/ui_features/model/navbar_model.dart';
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
    final List<NavbarModel> navbars = [
      NavbarModel(icon: "", title: "Feed", status: false),
      NavbarModel(icon: "", title: "title", status: false),
      NavbarModel(icon: "", title: "title", status: false),
      NavbarModel(icon: "", title: "title", status: false),
    ];
    return Scaffold(
      backgroundColor: AssetColors.skyWhite,
      appBar: const AppBarPrimary(
        text: "My Details",
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
                  const Divider(),
                  const ViewProfileListItem(
                    leftText: "First Name",
                    rightText: "Juinal",
                  ),
                  const Divider(),
                  ViewProfileListItem(
                    leftText: "Last Name",
                    rightText: "Enter Last name",
                    rightStyle: AssetStyles.labelMdRegular.copyWith(
                      color: AssetColors.skyDark,
                    ),
                  ),
                  const Divider(),
                  const ViewProfileListItem(
                    leftText: "Location",
                    rightText: "Indonesia",
                  ),
                  const HeaderSettingItem(
                    title: "ACCOUNT INFORMATION",
                  ),
                  const ViewProfileListItem(
                    leftText: "Email",
                    rightText: "juinal@studioalva.co",
                  ),
                  const HeaderSettingItem(
                    title: "INTERNATIONAL PREFERENCES",
                  ),
                  ButtonTwoListItem(
                    title: "Language",
                    subTitle: "English",
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ),
          NavBarCustom1(
            data: [...navbars],
            height: 65,
          ),
        ],
      ),
    );
  }
}
