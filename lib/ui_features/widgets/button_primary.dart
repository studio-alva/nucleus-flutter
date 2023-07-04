import 'dart:ffi';

import 'package:flutter/material.dart';
import '../../config/config.dart';

// ignore: must_be_immutable
class ButtonPrimary extends StatelessWidget {
  double? height = 48;
  double? width = 48;
  final String text;
  final TextStyle? style;
  final Color? color;
  final Function() onTap;
  final double? radius;
  final Bool? disable;
  EdgeInsetsGeometry? padding;
  ButtonPrimary({
    Key? key,
    this.height,
    this.width,
    required this.text,
    this.style,
    this.color,
    required this.onTap,
    this.radius = 30,
    this.padding,
    this.disable,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: height ?? 50,
        width: width ?? 170,
        padding: padding,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius!),
          color: color ?? AssetColors.primaryBase,
        ),
        child: Center(
          child: Text(
            text,
            style: style ??
                AssetStyles.labelMdRegular.copyWith(
                  color: AssetColors.skyWhite,
                  fontWeight: FontWeight.w500,
                ),
          ),
        ),
      ),
    );
  }
}
