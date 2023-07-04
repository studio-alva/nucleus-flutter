import 'package:flutter/material.dart';
import 'package:nucleus_ui_app/ui_features/model/posts_model.dart';
import '../../../config/config.dart';

class PostThumbBig extends StatelessWidget {
  final Posts data;
  const PostThumbBig({
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
                      image: AssetImage(data.imgThumb),
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            ),
          ),
          Text(
            data.title,
            style: AssetStyles.labelMdRegular.copyWith(
              fontWeight: FontWeight.w700,
              height: 2,
            ),
            maxLines: 2,
          ),
          verticalSpace(10),
          Text(
            "${data.time} · by ${data.authors}",
            style: AssetStyles.labelTinyReguler.copyWith(
              color: AssetColors.inkLight,
            ),
            maxLines: 2,
          ),
        ],
      ),
    );
  }
}
