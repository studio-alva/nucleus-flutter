import 'package:flutter/material.dart';
import 'package:nucleus_ui_app/config/asset_styles.dart';

// ignore: must_be_immutable
class TextButtonCustom extends StatelessWidget {
  String text;
  final Function() onTap;
  BoxDecoration? decoration;
  EdgeInsetsGeometry? padding;
  TextButtonCustom({
    super.key,
    required this.text,
    required this.onTap,
    this.decoration,
    this.padding,
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
          style: AssetStyles.labelButtonSecondary,
        ),
      ),
    );
  }
}
