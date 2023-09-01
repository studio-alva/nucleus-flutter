import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:faker/faker.dart';
import '../../../ui_features/widgets/text_button.dart';
import '../../../ui_features/model/search_model.dart';
import '../../../config/config.dart';
import '../../widgets/filter/serach_result_items.dart';
import '../../widgets/input/input_custom.dart';

class SearchResultPgaes extends StatelessWidget {
  const SearchResultPgaes({super.key});

  static const String searchResult = "searchResult";

  @override
  Widget build(BuildContext context) {
    Faker faker = Faker();
    TextEditingController search = TextEditingController();

    final List<Search> searchs = List.generate(
      100,
      (index) => Search(
        name: faker.person.firstName(),
        avatar: AssetPaths.imageAvatar1,
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
              Row(
                children: [
                  Expanded(
                    child: InputCustom(
                      controller: search,
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 5,
                        vertical: 2,
                      ),
                      prefixIcon: SvgPicture.asset(
                        AssetPaths.iconSearch,
                        fit: BoxFit.scaleDown,
                      ),
                      radius: 10,
                      filled: true,
                      borderless: true,
                      fillColor: AssetColors.skyLighter,
                      suffixIcon: SvgPicture.asset(
                        AssetPaths.iconClose,
                        fit: BoxFit.scaleDown,
                      ),
                      hintText: "Type Here",
                    ),
                  ),
                  horizontalSpace(15),
                  TextButtonCustom(
                    text: "Cancel",
                    onTap: () {},
                  ),
                ],
              ),
              verticalSpace(20),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ...searchs
                          .map(
                            (data) => SeachResultItem(
                              data: data,
                            ),
                          )
                          .toList()
                    ],
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
