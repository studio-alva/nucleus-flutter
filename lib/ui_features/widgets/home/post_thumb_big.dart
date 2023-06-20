import 'package:flutter/material.dart';
import '../../../config/config.dart';

class PostThumbBig extends StatelessWidget {
  Map<String, String> data = {};
  PostThumbBig({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth(context),
      height: screenHeight(context) * 0.4,
      margin: const EdgeInsets.only(right: 20, left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: LayoutBuilder(
              builder: (ctx, constraint) {
                return Container(
                  width: constraint.maxWidth,
                  height: constraint.minHeight * 0.8,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image:
                          AssetImage(data["images"] ?? AssetPaths.imageThumb1),
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
            child: Text(
              data["title"]!,
              style: AssetStyles.h3.copyWith(height: 2),
              maxLines: 2,
            ),
          ),
          verticalSpace(10),
          Container(
            child: Text(
              data["author"]!,
              style: AssetStyles.labelMdMdReg,
              maxLines: 2,
            ),
          ),
        ],
      ),
    );
  }
}
