import 'package:flutter/material.dart';

import '../../../config/config.dart';

class ThumbnailImg1 extends StatelessWidget {
  final double? width;
  final Widget? widget;
  const ThumbnailImg1({
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
          Text(
            data["title"]!,
            style: AssetStyles.labelMdRegular
                .copyWith(fontWeight: FontWeight.bold),
          ),
          verticalSpace(10),
          Text(
            data["desc"]!,
            style: AssetStyles.labelTinyReguler.copyWith(
              fontWeight: FontWeight.normal,
              color: AssetColors.inkLight,
            ),
            maxLines: 2,
          ),
        ],
      ),
    );
  }
}
