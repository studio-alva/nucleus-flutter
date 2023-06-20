import 'package:flutter/material.dart';
import 'package:nucleus_ui_app/config/asset_colors.dart';

class InputVerification extends StatelessWidget {
  bool? isActive;
  EdgeInsetsGeometry? edgeInsetsGeometry;
  TextEditingController? controller;

  InputVerification({
    super.key,
    this.isActive = false,
    this.edgeInsetsGeometry,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: edgeInsetsGeometry ?? EdgeInsets.zero,
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: isActive! ? AssetColors.primaryColor : AssetColors.inkDarkest,
        ),
      ),
      child: TextField(
        controller: controller,
        textAlign: TextAlign.center,
        decoration: const InputDecoration(
          border: InputBorder.none,
        ),
      ),
    );
  }
}
