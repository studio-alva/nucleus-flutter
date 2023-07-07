import 'package:flutter/material.dart';
import '../../../config/config.dart';

class DescriptionOneRow extends StatelessWidget {
  final String? left;
  final String? right;
  final bool? isBold;
  final double? fontSize;
  const DescriptionOneRow({
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
          style: AssetStyles.labelMdRegular.copyWith(
            fontWeight: isBold! ? FontWeight.bold : FontWeight.normal,
            fontSize: fontSize,
          ),
        ),
        Text(
          right!,
          style: AssetStyles.labelMdRegular.copyWith(
            color: AssetColors.inkDarkest,
            fontWeight: isBold! ? FontWeight.bold : FontWeight.normal,
            fontSize: fontSize,
          ),
        ),
      ],
    );
  }
}
