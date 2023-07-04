import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nucleus_ui_app/config/asset_paths.dart';
import 'package:nucleus_ui_app/config/config.dart';
import 'package:nucleus_ui_app/ui_features/model/categories_model.dart';
import 'package:nucleus_ui_app/ui_features/widgets/input/categori_item.dart';
import 'package:nucleus_ui_app/ui_features/widgets/input/input_custom.dart';
import 'package:nucleus_ui_app/ui_features/widgets/navbar/navbar_custom1.dart';

class SearchPages extends StatelessWidget {
  SearchPages({super.key});
  static const String searchPages = "searchPages";

  final List<Categories> category = [
    Categories(category: "Asian"),
    Categories(category: "Breakfast"),
    Categories(category: "Burger"),
    Categories(category: "Chicken"),
    Categories(category: "Chinese"),
    Categories(category: "Sweets"),
  ];

  final List<Categories> recent = [
    Categories(category: "Burger King"),
    Categories(category: "Gong Cha"),
  ];

  @override
  Widget build(BuildContext context) {
    TextEditingController search = TextEditingController();
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InputCustom(
                controller: search,
                contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                prefixIcon: SvgPicture.asset(
                  AssetPaths.iconSearch,
                  fit: BoxFit.scaleDown,
                ),
                suffixIcon: SvgPicture.asset(
                  AssetPaths.iconVoice,
                  fit: BoxFit.scaleDown,
                ),
              ),
              verticalSpace(20),
              Expanded(
                child: Container(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Recent Search",
                          style: AssetStyles.h3,
                        ),
                        verticalSpace(10),
                        ...recent
                            .map(
                              (e) => CategoryItem(categories: e),
                            )
                            .toList(),
                        verticalSpace(15),
                        const Text(
                          "Categories",
                          style: AssetStyles.h3,
                        ),
                        verticalSpace(10),
                        ...category
                            .map(
                              (e) => CategoryItem(categories: e),
                            )
                            .toList(),
                      ],
                    ),
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
