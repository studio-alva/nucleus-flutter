import 'package:flutter/material.dart';

import '../../../config/config.dart';

class ThumbnailImg extends StatelessWidget {
  double? width;
  Widget? widget;
  ThumbnailImg({
    super.key,
    required this.hits,
    this.width,
    this.widget,
  });

  final Map<String, String> hits;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      width: width,
      child: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(hits["images"]!),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          verticalSpace(10),
          Container(
            child: Text(
              hits["title"]!,
              style: AssetStyles.labelMdSmReg1
                  .copyWith(fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
