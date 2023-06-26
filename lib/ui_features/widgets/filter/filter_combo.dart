import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../config/config.dart';

class FilterComboBox extends StatelessWidget {
  String? title;
  String? subTitle;
  Function() onTap;
  String? icon;
  FilterComboBox({
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
          SvgPicture.asset(
            icon!,
            width: 10,
            height: 10,
          ),
        ],
      ),
    );
  }
}
