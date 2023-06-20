import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nucleus_ui_app/config/config.dart';
import 'package:nucleus_ui_app/ui_features/widgets/appbar/appbar_primary.dart';
import 'dart:math';

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
          itemBuilder: (context, index) => Container(
            decoration: BoxDecoration(
              color: AssetColors.skyWhite,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                  width: 1, color: AssetColors.inkDarkest.withOpacity(0.1)),
            ),
            margin: const EdgeInsets.all(6),
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10)),
                      image: DecorationImage(
                        image: NetworkImage(data[index]["images"]!),
                        fit: BoxFit.cover,
                        onError: (exception, stackTrace) =>
                            SvgPicture.asset(AssetPaths.iconNoImages),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  child: Text(
                    data[index]["name"]!,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
