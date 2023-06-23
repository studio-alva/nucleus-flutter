import 'package:flutter/material.dart';
import '../../../config/config.dart';

class DetailRow extends StatelessWidget {
  String? title;
  String? subTitle;
  DetailRow({
    super.key,
    this.subTitle,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            title!,
            style: AssetStyles.labelMdMdReg.copyWith(
              color: AssetColors.inkDarkest,
              fontWeight: FontWeight.bold,
            ),
          ),
          verticalSpace(5),
          Text(
            subTitle!,
            style: AssetStyles.labelMdMdReg.copyWith(
              color: AssetColors.inkDarkest,
            ),
          ),
        ],
      ),
    );
  }
}
