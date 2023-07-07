import 'package:flutter/material.dart';
import '../../../config/config.dart';

class ViewProfileListItem extends StatelessWidget {
  final String? leftText;
  final String? rightText;
  final TextStyle? rightStyle;
  const ViewProfileListItem({
    super.key,
    this.leftText,
    this.rightText,
    this.rightStyle,
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
            style: AssetStyles.labelMdRegular,
          ),
          Text(
            rightText!,
            style: rightStyle ?? AssetStyles.labelMdRegular,
          ),
        ],
      ),
    );
  }
}
