import 'package:flutter/material.dart';
import '../../../ui_features/model/navbar_model.dart';
import '../../../ui_features/model/posts_model.dart';
import '../../../ui_features/model/sort_model.dart';
import '../../../config/config.dart';
import '../../../ui_features/widgets/input/select_item1.dart';
import '../../widgets/home/greeting_header.dart';
import '../../widgets/home/post_thumb_big.dart';
import '../../widgets/home/post_thumb_small.dart';
import '../../widgets/navbar/navbar_custom1.dart';

class MainHomePages extends StatefulWidget {
  const MainHomePages({super.key});
  static const String mainHomePages = "mainHomePages";

  @override
  State<MainHomePages> createState() => _MainHomePagesState();
}

class _MainHomePagesState extends State<MainHomePages> {
  final List<SortModel> labelMenu = [
    SortModel(name: "World", status: true),
    SortModel(name: "U.S", status: false),
    SortModel(name: "Politics", status: false),
    SortModel(name: "Tech", status: false),
    SortModel(name: "Science", status: false),
  ];

  final List<Posts> posts = [
    Posts(
      icon: "",
      title: "A Plan to Rebuild the Bus Terminal Everyone Loves to Hate",
      imgThumb: AssetPaths.imageThumb1,
      organization: "",
      time: "1h ago",
      authors: "Troy Corlson",
      head: "",
      desc: "",
      content: "",
    ),
    Posts(
      icon: "",
      title: "California Ends Strict Virus Restrictions as New Cases Fall",
      imgThumb: AssetPaths.imagePost1,
      organization: "",
      time: "2h ago",
      authors: "Isabella Kwai",
      head: "",
      desc: "",
      content: "",
    ),
    Posts(
      icon: "",
      title: "Schools Were Set to Reopen. Then the Teachers’ Union Stepped In.",
      imgThumb: AssetPaths.imagePost2,
      organization: "",
      time: "3h ago",
      authors: "Tracey Trully",
      head: "",
      desc: "",
      content: "",
    ),
    Posts(
      icon: "",
      title: "Do Curfews Slow the Coronavirus?",
      imgThumb: AssetPaths.imagePost3,
      organization: "",
      time: "4h ago",
      authors: "Gina Kolata",
      head: "",
      desc: "",
      content: "",
    ),
  ];

  final List<NavbarModel> navbars = [
    NavbarModel(icon: "", title: "", status: false),
    NavbarModel(icon: "", title: "", status: false),
    NavbarModel(icon: "", title: "", status: false),
    NavbarModel(icon: "", title: "", status: true),
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
                    ),
                    verticalSpace(20),
                    Container(
                      margin: const EdgeInsets.only(right: 20, left: 20),
                      height: 50,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: labelMenu.length,
                        itemBuilder: (context, index) => GestureDetector(
                          onTap: () {},
                          child: SelectItem1(
                            isActive: labelMenu[index].status,
                            text: labelMenu[index].name,
                            margin: const EdgeInsets.symmetric(horizontal: 5),
                            bgSecond: AssetColors.skyLighter,
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
              NavBarCustom1(
                data: navbars,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
