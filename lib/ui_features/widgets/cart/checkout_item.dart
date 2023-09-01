import 'package:flutter/material.dart';
import '../../../ui_features/widgets/text_button.dart';
import '../../../config/config.dart';

class CheckOutItem extends StatelessWidget {
  String? title;
  String? subTitle;
  Function() onTap;

  CheckOutItem({
    super.key,
    this.title,
    this.subTitle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title!,
              style: AssetStyles.labelMdRegular,
            ),
            verticalSpace(5),
            Text(
              subTitle!,
              style: AssetStyles.labelSmReguler.copyWith(
                color: AssetColors.inkLighter,
              ),
            ),
          ],
        ),
        TextButtonCustom(
          text: "Edit",
          borderRadius: BorderRadius.circular(
            20,
          ),
          onTap: onTap,
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 10,
          ),
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: AssetColors.primaryColor,
            ),
            borderRadius: BorderRadius.circular(
              20,
            ),
          ),
        ),
      ],
    );
  }
}
