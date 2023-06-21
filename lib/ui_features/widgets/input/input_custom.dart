import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:nucleus_ui_app/config/asset_colors.dart';

import '../../../config/asset_styles.dart';
import '../../../config/ui_helper.dart';

class InputCustom extends StatelessWidget {
  final Widget? prefixIcon;
  final TextInputType? inputType;
  final TextEditingController controller;
  final Widget? label;
  final String? hintText;
  final bool obsecure;
  final FocusNode? focusNode;
  final EdgeInsetsGeometry? contentPadding;
  const InputCustom({
    super.key,
    required this.controller,
    this.prefixIcon,
    this.inputType = TextInputType.text,
    this.label,
    this.hintText = "Input Number",
    this.obsecure = false,
    this.focusNode,
    this.contentPadding,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          prefixIcon: prefixIcon,
          hintStyle: AssetStyles.labelMdMdReg,
          hintText: hintText,
          label: label,
          contentPadding: contentPadding),
      style: AssetStyles.labelMdMdReg.copyWith(
        color: AssetColors.inkDarkest,
      ),
      keyboardType: inputType,
      obscureText: obsecure,
    );
  }
}
