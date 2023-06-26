import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../config/config.dart';

class CartDetail extends StatelessWidget {
  String title;
  String caption;
  CartDetail({
    super.key,
    required this.title,
    required this.caption,
  });

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
                style: AssetStyles.labelMdMdReg.copyWith(
                  color: AssetColors.inkDarkest,
                ),
              ),
              verticalSpace(5),
              Text(
                caption,
                style: AssetStyles.labelMdSmReg1,
              ),
            ],
          ),
        ),
        InkWell(
          onTap: () {
            print("ok");
          },
          child: SvgPicture.asset(
            AssetPaths.iconAdd,
          ),
        )
      ],
    );
  }
}
