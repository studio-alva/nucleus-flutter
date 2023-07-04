import 'package:flutter/material.dart';
import '../../../config/asset_colors.dart';

class InputVerification extends StatelessWidget {
  final bool? isActive;
  final EdgeInsetsGeometry? edgeInsetsGeometry;
  final TextEditingController? controller;

  const InputVerification({
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
        keyboardType: TextInputType.number,
        maxLength: 1,
        controller: controller,
        textAlign: TextAlign.center,
        decoration: const InputDecoration(
          border: InputBorder.none,
          counterText: "",
        ),
      ),
    );
  }
}
