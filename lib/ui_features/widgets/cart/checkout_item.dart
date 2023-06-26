import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nucleus_ui_app/ui_features/widgets/text_button.dart';
import '../../../config/config.dart';

class CheckOutItem extends StatelessWidget {
  String? title;
  String? subTitle;
  Function() onTap;
  String? icon;

  CheckOutItem({
    super.key,
    this.title,
    this.subTitle,
    required this.onTap,
    this.icon = AssetPaths.iconDown,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title!,
                style: AssetStyles.h3,
              ),
              verticalSpace(5),
              Text(
                subTitle!,
                style: AssetStyles.labelMdSmReg1,
              ),
            ],
          ),
          TextButtonCustom(
            text: "Edit",
            onTap: onTap,
            padding: const EdgeInsets.all(10),
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
      ),
    );
  }
}
