import 'package:flutter/material.dart';
import '../../config/config.dart';

// ignore: must_be_immutable
class TextButtonCustom extends StatelessWidget {
  final String text;
  final Function() onTap;
  final BoxDecoration? decoration;
  final EdgeInsetsGeometry? padding;
  TextStyle? style;
  TextButtonCustom({
    super.key,
    required this.text,
    required this.onTap,
    this.decoration,
    this.padding,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: padding,
        decoration: decoration,
        child: Text(
          text,
          style: style ??
              AssetStyles.labelMdRegular.copyWith(
                color: AssetColors.primaryBase,
                fontWeight: FontWeight.w500,
              ),
        ),
      ),
    );
  }
}
