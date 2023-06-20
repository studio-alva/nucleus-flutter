import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nucleus_ui_app/config/config.dart';
import 'package:nucleus_ui_app/ui_features/widgets/appbar/appbar_primary.dart';
import 'dart:math';

import '../../widgets/home/item_home.dart';

class HomeAllItemsPages extends StatelessWidget {
  const HomeAllItemsPages({super.key});
  static const String homeAllItemsPages = "homeAllItemsPages";

  @override
  Widget build(BuildContext context) {
    var faker = Faker();
    List<Map<String, String>> data = List.generate(
      30,
      (index) => {
        "images": "https://picsum.photos/id/${Random().nextInt(100)}/200/300",
        "name": faker.company.name(),
      },
    );

    return Scaffold(
      appBar: AppBarPrimary(
        text: "All Items",
        heightAppBar: 50,
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(AssetPaths.iconSettings),
          ),
        ],
      ),
      body: Container(
        margin: const EdgeInsets.fromLTRB(20, 0, 20, 20),
        child: GridView.builder(
          itemCount: 20,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemBuilder: (context, index) => HomeItem(data: data[index]),
        ),
      ),
    );
  }
}
