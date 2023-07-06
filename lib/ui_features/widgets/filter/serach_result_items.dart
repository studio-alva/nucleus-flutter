import 'package:flutter/material.dart';
import '../../../config/config.dart';
import '../../model/search_model.dart';

class SeachResultItem extends StatelessWidget {
  final Search data;
  const SeachResultItem({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 45,
            width: 45,
            child: CircleAvatar(
              backgroundImage: AssetImage(
                data.avatar,
              ),
            ),
          ),
          horizontalSpace(15),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data.name,
                  style: AssetStyles.labelMdRegular,
                ),
                verticalSpace(5),
                RichText(
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  text: TextSpan(
                    children: [
                      ...data.position.map(
                        (pos) => TextSpan(
                          text: "${pos.name}, ",
                          style: AssetStyles.labelSmReguler.copyWith(
                            color: AssetColors.inkLighter,
                          ),
                        ),
                      )
                    ],
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
