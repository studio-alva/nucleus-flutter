import 'package:flutter/material.dart';
import '../../../config/config.dart';

class ListCheckout extends StatelessWidget {
  String leftText;
  String rightText;
  ListCheckout({
    super.key,
    required this.leftText,
    required this.rightText,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          leftText,
          style: AssetStyles.h3.copyWith(
            color: AssetColors.textGrey,
          ),
        ),
        Text(
          rightText,
          style: AssetStyles.h3,
        ),
      ],
    );
  }
}
