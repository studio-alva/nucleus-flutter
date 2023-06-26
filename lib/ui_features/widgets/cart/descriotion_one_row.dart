import 'package:flutter/material.dart';
import '../../../config/config.dart';

class DescriptionOneRow extends StatelessWidget {
  String? left;
  String? right;
  bool? isBold;
  double? fontSize;
  DescriptionOneRow({
    super.key,
    this.left,
    this.right,
    this.isBold = false,
    this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          left!,
          style: AssetStyles.labelMdMdReg.copyWith(
            color: AssetColors.inkDarkest,
            fontWeight: isBold! ? FontWeight.bold : FontWeight.normal,
            fontSize: fontSize,
          ),
        ),
        Text(
          right!,
          style: AssetStyles.labelMdMdReg.copyWith(
            color: AssetColors.inkDarkest,
            fontWeight: isBold! ? FontWeight.bold : FontWeight.normal,
            fontSize: fontSize,
          ),
        ),
      ],
    );
  }
}
