import 'package:flutter/material.dart';

import '../../../config/config.dart';

class PostThumbSmall extends StatelessWidget {
  Map<String, String> data;
  PostThumbSmall({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(data["images"] ?? AssetPaths.imageThumb1),
                fit: BoxFit.cover,
              ),
            ),
          ),
          horizontalSpace(20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: Text(
                    data["title"]!,
                    style: AssetStyles.h4.copyWith(height: 1.5),
                    maxLines: 2,
                  ),
                ),
                verticalSpace(10),
                Container(
                  child: Text(
                    data["author"]!,
                    style: AssetStyles.labelMdSmReg,
                    maxLines: 1,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
