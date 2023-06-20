import 'package:flutter/material.dart';
import 'package:nucleus_ui_app/config/config.dart';
import 'package:nucleus_ui_app/ui_features/widgets/appbar/appbar_secodary.dart';
import 'package:nucleus_ui_app/ui_features/widgets/button_primary.dart';

import '../../widgets/input/select_item.dart';

class PersonalizationFirstPage extends StatelessWidget {
  static const String personalizationFirstPage = "personalizationFirstPage";
  const PersonalizationFirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> pilihan = [
      "None",
      "Core Strength",
      "Chest",
      "Shoulder",
      "Backbends",
      "Traps",
      "Forearms",
      "Hamstring",
      "Upper Back",
      "Lower Back",
    ];
    return Scaffold(
      appBar: AppBarSecondary(
        center: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [0, 1, 2, 3]
              .map((e) => Container(
                    width: 10,
                    height: 10,
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: AssetColors.primaryColor,
                    ),
                  ))
              .toList(),
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text("Skip"),
          ),
        ],
      ),
      body: Container(
        margin: const EdgeInsets.fromLTRB(30, 0, 30, 30),
        child: Column(
          children: [
            const Text(
              "Practice Area",
              style: AssetStyles.h1,
            ),
            verticalSpace(10),
            Text(
              "So we can recommend exercises",
              style: AssetStyles.h3.copyWith(
                fontWeight: FontWeight.normal,
              ),
            ),
            verticalSpace(10),
            Flexible(
              child: Container(
                margin: const EdgeInsets.only(top: 10),
                child: ListView(
                  children: pilihan
                      .map(
                        (e) => SelectItem(
                          bgColor: e == "None"
                              ? AssetColors.primaryLightest
                              : AssetColors.skyLighter,
                          text: e,
                        ),
                      )
                      .toList(),
                ),
              ),
            ),
            verticalSpace(10),
            ButtonPrimary(
              onTap: () {},
              text: "Select",
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
