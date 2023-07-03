import 'package:flutter/material.dart';
import '../../../config/config.dart';
import '../../model/sort_model.dart';
import '../../widgets/button_primary.dart';
import '../../widgets/text_button.dart';

class FilterModalPages extends StatelessWidget {
  FilterModalPages({super.key});
  static const String filterModalPages = "filterModalPages";

  List<SortModel> sortData = [
    SortModel(name: "All Categories", status: false),
    SortModel(name: "Smart Watches", status: true),
    SortModel(name: "Cell Phones & Accessories", status: true),
    SortModel(name: "Sporting Goods", status: false),
    SortModel(name: "Computer", status: false),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (context) => ModalFilterBody(
                sm: sortData,
              ),
            );
          },
          child: const Text("Show Modal"),
        ),
      ),
    );
  }
}

class ModalFilterBody extends StatelessWidget {
  ModalFilterBody({
    super.key,
    required this.sm,
  });

  List<SortModel> sm;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 40,
        horizontal: 20,
      ),
      height: screenHeight(context) * 0.41,
      decoration: const BoxDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Filter",
            style: AssetStyles.h2,
          ),
          verticalSpace(20),
          Container(
            height: screenHeight(context) * 0.25,
            child: ListView.builder(
              itemCount: sm.length,
              itemBuilder: (context, index) => InkWell(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.only(
                    right: 20,
                  ),
                  margin: const EdgeInsets.only(bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        sm[index].name,
                        style: AssetStyles.labelMdMdReg.copyWith(
                          color: AssetColors.inkDarkest,
                        ),
                      ),
                      Checkbox(value: sm[index].status, onChanged: (vale) {}),
                    ],
                  ),
                ),
              ),
            ),
          ),
          verticalSpace(20),
          ButtonPrimary(
            onTap: () {},
            text: "Show 340 Result",
            height: 50,
          ),
          verticalSpace(20),
          Center(
            child: TextButtonCustom(
              text: "Reset",
              style: AssetStyles.labelMdMdReg.copyWith(
                color: AssetColors.inkDarkest,
              ),
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}
