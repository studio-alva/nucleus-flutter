import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nucleus_ui_app/ui_features/model/sort_model.dart';
import '../../../config/config.dart';

class SortModalPages extends StatelessWidget {
  SortModalPages({super.key});
  static const String sortModalPages = "sortModalPages";

  List<SortModel> sortData = [
    SortModel(name: "Custom", status: false),
    SortModel(name: "Relevance", status: true),
    SortModel(name: "Most Recent", status: false),
    SortModel(name: "Lowest Price", status: false),
    SortModel(name: "Highest Price", status: false),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (context) => ModalSortBody(
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

class ModalSortBody extends StatelessWidget {
  ModalSortBody({
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
      height: screenHeight(context) * 0.3,
      decoration: const BoxDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Sort",
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
                    top: 15,
                    bottom: 15,
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
                      sm[index].status
                          ? SvgPicture.asset(AssetPaths.iconCheck)
                          : Container(),
                    ],
                  ),
                ),
              ),
            ),
          ),

          // verticalSpace(20),
        ],
      ),
    );
  }
}
