import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../config/config.dart';

class ButtonTwoListItem extends StatelessWidget {
  String title;
  String? subTitle;
  ButtonTwoListItem({
    super.key,
    required this.title,
    this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 20,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
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
                  subTitle!,
                  style: AssetStyles.labelMdSmReg1.copyWith(
                    color: AssetColors.textGrey,
                  ),
                ),
              ],
            ),
            SizedBox(
              child: SvgPicture.asset(AssetPaths.iconNext),
            ),
          ],
        ),
      ),
    );
  }
}
