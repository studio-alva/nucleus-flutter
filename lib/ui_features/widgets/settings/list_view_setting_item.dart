import 'package:flutter/material.dart';
import '../../../config/config.dart';

class ViewProfileListItem extends StatelessWidget {
  String? leftText;
  String? rightText;
  ViewProfileListItem({
    super.key,
    this.leftText,
    this.rightText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            leftText!,
            style: AssetStyles.labelMdMdReg.copyWith(
              color: AssetColors.inkDarkest,
            ),
          ),
          Text(
            rightText!,
            style: AssetStyles.labelMdMdReg.copyWith(
              color: AssetColors.inkDarkest,
            ),
          ),
        ],
      ),
    );
  }
}
