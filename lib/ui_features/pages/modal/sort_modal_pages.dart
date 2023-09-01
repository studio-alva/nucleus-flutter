import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nucleus_ui_app/ui_features/model/sort_model.dart';
import '../../../config/config.dart';

class SortModalPages extends StatelessWidget {
  SortModalPages({super.key});
  static const String sortModalPages = "sortModalPages";

  final List<SortModel> sortData = [
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
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
              ),
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
  const ModalSortBody({
    super.key,
    required this.sm,
  });

  final List<SortModel> sm;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight(context) * 0.45,
      decoration: const BoxDecoration(),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: 48,
              height: 5,
              margin: const EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: AssetColors.skyBase,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 40,
              horizontal: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Sort",
                  style: AssetStyles.h2,
                ),
                verticalSpace(20),
                SizedBox(
                  height: screenHeight(context) * 0.28,
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
                              style: AssetStyles.labelMdRegular,
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
          ),
        ],
      ),
    );
  }
}
