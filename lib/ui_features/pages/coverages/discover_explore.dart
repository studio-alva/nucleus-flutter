import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nucleus_ui_app/config/config.dart';
import 'package:nucleus_ui_app/ui_features/widgets/appbar/appbar_primary.dart';
import 'package:nucleus_ui_app/ui_features/widgets/coverages/coverages_item.dart';

class DiscoverExplorePages extends StatelessWidget {
  DiscoverExplorePages({super.key});
  static const String discoverPages = "discoverPages";

  final List<Map<String, String>> coverages = [
    {
      "icon": AssetPaths.iconWho,
      "title": "IDIA and the WHO announce strategic collaboration to support",
      "imgThumb": AssetPaths.imagePostWho,
      "organization": "World Health Organization",
      "time": "17 hours ago",
      "desc":
          "The World Health Organization (WHO) and the International Development Innovation Alliance... ",
    },
    {
      "icon": AssetPaths.iconFs,
      "title":
          "Sony Just Destroyed the Competition With New Sony a1 Mirroless...",
      "imgThumb": AssetPaths.imagePostFs,
      "organization": "Fstoppers",
      "time": "Yesterday",
      "desc": "",
    },
    {
      "icon": AssetPaths.iconT3,
      "title": "iPad Air (2020) vs Samsung Galaxy Tab S7",
      "imgThumb": AssetPaths.imagePostT3,
      "organization": "T3",
      "time": "2 days ago",
      "desc": "",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppBarPrimary(
                text: "Full Coverage",
                actions: [
                  TextButton(
                    onPressed: () {},
                    child: SvgPicture.asset(AssetPaths.iconSearch),
                  ),
                ],
              ),
              verticalSpace(20),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Top Coverage",
                      style: AssetStyles.t3,
                    ),
                    verticalSpace(30),
                    ...coverages.map((e) {
                      return CoveragesItem(
                        data: e,
                      );
                    }).toList(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
