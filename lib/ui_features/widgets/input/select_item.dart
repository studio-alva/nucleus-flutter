import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nucleus_ui_app/config/config.dart';

class SelectItem extends StatelessWidget {
  Color? bgColor;
  String? text;
  double? height;
  double? radius;
  TextStyle? style;
  bool? matchParent;
  SelectItem({
    super.key,
    this.bgColor = AssetColors.skyLight,
    this.text = "",
    this.height = 50,
    this.radius = 15,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      height: height,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(radius!),
      ),
      child: Center(
        child: Text(
          text!,
          style: style,
        ),
      ),
    );
  }
}
