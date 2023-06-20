import 'package:flutter/material.dart';
import 'package:nucleus_ui_app/config/config.dart';

class SelectItem extends StatelessWidget {
  Color? bgColor;
  String? text;
  SelectItem({
    super.key,
    this.bgColor = AssetColors.skyLight,
    this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      height: 50,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(
        child: Text(text!),
      ),
    );
  }
}
