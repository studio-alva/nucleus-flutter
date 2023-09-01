import 'package:flutter/material.dart';
import '../../../config/config.dart';

class ListCheckout extends StatelessWidget {
  final String leftText;
  final String rightText;
  final TextStyle? stlyeRightText;
  const ListCheckout({
    super.key,
    required this.leftText,
    this.stlyeRightText,
    required this.rightText,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          leftText,
          style: AssetStyles.labelMdRegular.copyWith(
            color: AssetColors.inkLight,
          ),
        ),
        Text(
          rightText,
          style: stlyeRightText ??
              AssetStyles.labelMdRegular.copyWith(
                fontWeight: FontWeight.w500,
              ),
        ),
      ],
    );
  }
}
