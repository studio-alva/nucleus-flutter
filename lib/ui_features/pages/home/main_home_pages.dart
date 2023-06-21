import 'package:flutter/material.dart';
import '../../../config/config.dart';
import '../../../ui_features/widgets/input/select_item1.dart';
import '../../widgets/home/greeting_header.dart';
import '../../widgets/home/post_thumb_big.dart';
import '../../widgets/home/post_thumb_small.dart';

class MainHomePages extends StatefulWidget {
  const MainHomePages({super.key});
  static const String mainHomePages = "mainHomePages";

  @override
  State<MainHomePages> createState() => _MainHomePagesState();
}

class _MainHomePagesState extends State<MainHomePages> {
  List<String> labelMenu = ["World", "U.S", "Politics", "Tech", "Science"];
  List<Map<String, String>> posts = [
    {
      "title": "A Plan to Rebuild the Bus Terminal Everyone Loves to Hate",
      "author": "1h ago · by Troy Corlson",
      "images": AssetPaths.imageThumb1,
    },
    {
      "title": "California Ends Strict Virus Restrictions as New Cases Fall",
      "author": "2h ago · by Isabella Kwai",
      "images": AssetPaths.imagePost1,
    },
    {
      "title":
          "Schools Were Set to Reopen. Then the Teachers’ Union Stepped In.",
      "author": "3h ago · by Tracey Trully",
      "images": AssetPaths.imagePost2,
    },
    {
      "title": "Do Curfews Slow the Coronavirus?",
      "author": "4h ago · by Gina Kolata",
      "images": AssetPaths.imagePost3,
    },
  ];

  int selectedLabel = 0;
  int idPost = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(top: 30),
          width: screenWidth(context),
          height: screenHeight(context),
          child: Column(
            children: [
              Flexible(
                child: ListView(
                  children: [
                    const GreetingHeader(),
                    verticalSpace(15),
                    const Divider(
                      height: 0.5,
                      color: Colors.red,
                    ),
                    verticalSpace(20),
                    Container(
                      margin: const EdgeInsets.only(right: 20, left: 20),
                      height: 50,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: labelMenu.length,
                        itemBuilder: (context, index) => GestureDetector(
                          onTap: () => setState(
                            () {
                              selectedLabel = index;
                            },
                          ),
                          child: SelectItem1(
                            text: labelMenu[index],
                            bgColor: index == selectedLabel
                                ? AssetColors.primaryLightest
                                : AssetColors.skyLight,
                            style: index == selectedLabel
                                ? AssetStyles.h3.copyWith(
                                    color: AssetColors.primaryColor,
                                  )
                                : AssetStyles.labelMdMdReg,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 25,
                              vertical: 15,
                            ),
                            margin: const EdgeInsets.symmetric(horizontal: 5),
                          ),
                        ),
                      ),
                    ),
                    verticalSpace(20),
                    (posts.isNotEmpty)
                        ? PostThumbBig(
                            data: posts[0],
                          )
                        : Container(),
                    verticalSpace(30),
                    Container(
                      margin: const EdgeInsets.only(right: 20, left: 20),
                      child: Column(
                        children: posts.map((e) {
                          if (idPost != 0) {
                            idPost++;
                            return Container(
                              margin: const EdgeInsets.only(bottom: 20),
                              child: PostThumbSmall(
                                data: e,
                              ),
                            );
                          } else {
                            idPost++;
                            return Container();
                          }
                        }).toList(),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 50,
                child: Row(
                  children: [1, 2, 3, 4]
                      .map(
                        (e) => Flexible(
                          flex: 1,
                          child: Container(
                            margin: const EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(),
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
