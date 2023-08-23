import 'package:flutter/material.dart';
import 'package:nucleus_ui_app/config/asset_styles.dart';

import '../../../config/asset_colors.dart';

class SelectItem1 extends StatelessWidget {
  final bool? border;
  final String? text;
  final Color? bgColor;
  final TextStyle? style;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final Function()? onTap;
  final bool? isActive;
  final Color? bgSecond;
  const SelectItem1({
    super.key,
    this.border = false,
    required this.text,
    this.bgColor,
    this.style,
    this.padding,
    this.margin,
    this.onTap,
    this.isActive,
    this.bgSecond,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        alignment: Alignment.center,
        margin: margin ?? const EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
          color: isActive!
              ? AssetColors.primaryLightest
              : bgSecond ?? AssetColors.skyWhite,
          borderRadius: BorderRadius.circular(30),
          border: isActive!
              ? const Border.symmetric()
              : Border.all(
                  color: AssetColors.skyLighter,
                ),
        ),
        child: Text(
          text!,
          style: AssetStyles.labelMdRegular.copyWith(
            color: isActive! ? AssetColors.primaryBase : AssetColors.inkDarkest,
          ),
        ),
      ),
    );
  }
}
