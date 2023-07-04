import 'package:flutter/material.dart';
import '../../../config/config.dart';
import '../../../ui_features/model/sort_model.dart';
import '../../../ui_features/widgets/appbar/appbar_secodary.dart';
import '../../../ui_features/widgets/button_primary.dart';
import '../../widgets/input/select_item.dart';
import '../../widgets/text_button.dart';

class PersonalizationFirstPage extends StatelessWidget {
  static const String personalizationFirstPage = "personalizationFirstPage";
  const PersonalizationFirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<SortModel> pilihan = [
      SortModel(name: "None", status: true),
      SortModel(name: "Core Strength", status: false),
      SortModel(name: "Chest", status: false),
      SortModel(name: "Shoulder", status: false),
      SortModel(name: "Backbends", status: false),
      SortModel(name: "Traps", status: false),
      SortModel(name: "Forearms", status: false),
      SortModel(name: "Hamstring", status: false),
      SortModel(name: "Upper Back", status: false),
      SortModel(name: "Lower Back", status: false),
    ];

    return Scaffold(
      appBar: AppBarSecondary(
        center: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [0, 2, 3]
              .map(
                (e) => Container(
                  width: 10,
                  height: 10,
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: (e == 2)
                        ? AssetColors.primaryBase
                        : AssetColors.skyLight,
                  ),
                ),
              )
              .toList(),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(top: 20, right: 20),
            child: TextButtonCustom(
              text: "Skip",
              style: AssetStyles.labelMdRegular.copyWith(
                color: AssetColors.skyDark,
                fontWeight: FontWeight.w500,
              ),
              onTap: () {},
            ),
          ),
        ],
      ),
      body: Container(
        margin: const EdgeInsets.fromLTRB(30, 0, 30, 30),
        child: Column(
          children: [
            const Text(
              "Practice Area",
              style: AssetStyles.t2,
            ),
            verticalSpace(10),
            Text("So we can recommend exercises",
                style: AssetStyles.labelMdRegular.copyWith(
                  color: AssetColors.inkLight,
                )),
            verticalSpace(20),
            Flexible(
              child: Container(
                margin: const EdgeInsets.only(top: 10),
                child: ListView(
                  children: [
                    ...pilihan.map(
                      (e) => SelectItem(
                        text: e.name,
                        isActive: e.status,
                        onTap: () {
                          print(e.name);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            verticalSpace(10),
            ButtonPrimary(
              width: screenWidth(context) * 0.9,
              text: "Select",
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
