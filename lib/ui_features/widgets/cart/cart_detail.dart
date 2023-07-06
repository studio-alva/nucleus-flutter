import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../config/config.dart';

class CartDetail extends StatelessWidget {
  String title;
  String caption;
  final Function()? onTap;
  CartDetail(
      {super.key, required this.title, required this.caption, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: AssetStyles.labelMdRegular,
              ),
              verticalSpace(5),
              Text(
                caption,
                style: AssetStyles.labelSmReguler.copyWith(
                  color: AssetColors.inkLighter,
                ),
              ),
            ],
          ),
        ),
        InkWell(
          onTap: onTap ?? () {},
          child: SvgPicture.asset(
            AssetPaths.iconAdd,
          ),
        )
      ],
    );
  }
}
