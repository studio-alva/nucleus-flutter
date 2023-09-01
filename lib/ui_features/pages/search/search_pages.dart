import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../config/config.dart';
import '../../model/categories_model.dart';
import '../../model/navbar_model.dart';
import '../../../ui_features/widgets/input/categori_item.dart';
import '../../../ui_features/widgets/input/input_custom.dart';
import '../../../ui_features/widgets/navbar/navbar_custom1.dart';

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

  final List<NavbarModel> navbars = [
    NavbarModel(icon: "", title: "feed", status: false),
    NavbarModel(icon: "", title: "title", status: false),
    NavbarModel(icon: "", title: "title", status: false),
    NavbarModel(icon: "", title: "title", status: false),
    NavbarModel(icon: "", title: "title", status: false),
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
                radius: 10,
                filled: true,
                fillColor: AssetColors.skyLighter,
                suffixIcon: SvgPicture.asset(
                  AssetPaths.iconVoice,
                  fit: BoxFit.scaleDown,
                ),
                borderless: true,
                hintText: "Search",
              ),
              verticalSpace(24),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Recent Search",
                        style: AssetStyles.labelMdRegular.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      verticalSpace(10),
                      ...recent
                          .map(
                            (e) => CategoryItem(categories: e),
                          )
                          .toList(),
                      verticalSpace(20),
                      Text(
                        "Categories",
                        style: AssetStyles.labelMdRegular.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
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
              NavBarCustom1(
                data: navbars,
                height: 65,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
