import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nucleus_ui_app/ui_features/model/search_model.dart';
import 'package:faker/faker.dart';

import '../../../config/config.dart';
import '../../widgets/input/input_custom.dart';

class SearchResultPgaes extends StatelessWidget {
  SearchResultPgaes({super.key});

  static const String searchResult = "searchResult";

  @override
  Widget build(BuildContext context) {
    Faker faker = Faker();
    TextEditingController search = TextEditingController();

    final List<Search> searchs = List.generate(
      100,
      (index) => Search(
        name: faker.person.firstName(),
        avatar: "",
        position: List.generate(
          Random().nextInt(2) + 1,
          (index) => Position(
            name: faker.company.position(),
          ),
        ),
      ),
    );

    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
          child: Column(
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
                      children: [
                        ...searchs
                            .map(
                              (data) => Container(
                                width: double.infinity,
                                margin: const EdgeInsets.only(bottom: 20),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    CircleAvatar(),
                                    horizontalSpace(15),
                                    Expanded(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(data.name),
                                          Row(
                                            children: [
                                              ...data.position.map(
                                                (pos) => Text(
                                                  "${pos.name}, ",
                                                ),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                            .toList()
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
