import 'package:flutter/material.dart';

import '../../../config/asset_colors.dart';

class SelectItem1 extends StatelessWidget {
  bool? border;
  String? text;
  Color? bgColor;
  TextStyle? style;
  SelectItem1({
    super.key,
    this.border = false,
    required this.text,
    this.bgColor = AssetColors.skyLighter,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Text(
        text!,
        style: style,
      ),
    );
  }
}
