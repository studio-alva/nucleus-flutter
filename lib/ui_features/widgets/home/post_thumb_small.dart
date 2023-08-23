import 'package:flutter/material.dart';
import '../../../ui_features/model/posts_model.dart';
import '../../../config/config.dart';

class PostThumbSmall extends StatelessWidget {
  final Posts data;
  const PostThumbSmall({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: () {},
        child: Row(
          children: [
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(data.imgThumb),
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
                  Text(
                    data.title,
                    style: AssetStyles.labelSmReguler.copyWith(
                      fontWeight: FontWeight.w700,
                      height: 1.5,
                    ),
                    maxLines: 2,
                  ),
                  verticalSpace(10),
                  Text(
                    "${data.time} · by ${data.authors}",
                    style: AssetStyles.labelTinyReguler.copyWith(
                      color: AssetColors.inkLight,
                    ),
                    maxLines: 1,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
