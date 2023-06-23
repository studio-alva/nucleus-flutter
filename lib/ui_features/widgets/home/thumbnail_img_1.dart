import 'package:flutter/material.dart';

import '../../../config/config.dart';

class ThumbnailImg1 extends StatelessWidget {
  double? width;
  Widget? widget;
  ThumbnailImg1({
    super.key,
    required this.data,
    this.width,
    this.widget,
  });

  final Map<String, String> data;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: width! * 0.9,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(data["images"]!),
                fit: BoxFit.cover,
              ),
            ),
          ),
          verticalSpace(10),
          Container(
            child: Text(
              data["title"]!,
              style: AssetStyles.labelMdSmReg1
                  .copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          verticalSpace(10),
          Container(
            child: Text(
              data["desc"]!,
              style: AssetStyles.labelMdSmReg1
                  .copyWith(fontWeight: FontWeight.normal),
              maxLines: 2,
            ),
          ),
        ],
      ),
    );
  }
}
