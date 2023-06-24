import 'package:flutter/material.dart';
import 'package:nucleus_ui_app/config/asset_colors.dart';
import 'package:nucleus_ui_app/config/asset_paths.dart';
import 'package:nucleus_ui_app/config/asset_styles.dart';
import 'package:nucleus_ui_app/config/config.dart';
import 'package:nucleus_ui_app/ui_features/model/posts_model.dart';
import 'package:nucleus_ui_app/ui_features/widgets/appbar/appbar_primary.dart';

class ContentDetailPostPages extends StatelessWidget {
  ContentDetailPostPages({super.key});
  static const String contentPostDetail = "contentPostDetail";

  final Posts post = Posts(
      title: "Is It Safe to Fly During Pandemic?",
      head: "NY TIMES",
      authors: "Tariro Mzezewa",
      time: "Nov. 25, 2020",
      organization: "",
      desc: "",
      icon: "",
      imgThumb: AssetPaths.imagePost,
      content:
          "A day after the Centers for Disease Control and Prevention urged Americans to stay home for Thanksgiving, more than one million people in the United States got on planes, marking the second day that more than a million people have flown since March. Nearly three million additional people have flown in the days since. The high number of travelers speaks to a sense of pandemic fatigue that many people are experiencing. For some, the desire to see family is worth the risk of potentially getting the coronavirus while traveling.\r\n\r\nBut filtration is not enough.\r\n\r\nVentilation is just one piece of the puzzle, said Saskia Popescu, an infection prevention epidemiologist in Arizona. (Dr. Popescu is married to Mr. Popescu.) Distancing and masking are also important to mitigate risk, and are the other key components for keeping the coronavirus from spreading, whether on planes or elsewhere.");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarPrimary(),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              verticalSpace(10),
              Text(
                post.head,
                style: AssetStyles.labelMdSmReg1.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              verticalSpace(20),
              Text(
                post.title,
                style: AssetStyles.h1,
              ),
              verticalSpace(20),
              Row(
                children: [
                  const Text(
                    "by ",
                    style: AssetStyles.labelMdSmReg1,
                  ),
                  Text(
                    post.authors,
                    style: AssetStyles.labelMdSmReg1.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    " - ${post.time}",
                    style: AssetStyles.labelMdSmReg1,
                  ),
                ],
              ),
              verticalSpace(20),
              Container(
                width: double.infinity,
                child: Image(
                  image: AssetImage(post.imgThumb),
                  fit: BoxFit.fitWidth,
                ),
              ),
              verticalSpace(20),
              Text(
                post.content,
                style: AssetStyles.labelMdMdReg.copyWith(
                  color: AssetColors.inkDarkest,
                ),
              ),
              verticalSpace(20),
            ],
          ),
        ),
      ),
    );
  }
}
