import 'package:flutter/material.dart';
import '../../../config/config.dart';

class InputCustom extends StatelessWidget {
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextInputType? inputType;
  final TextEditingController controller;
  final Widget? label;
  final String? hintText;
  final bool obsecure;
  final FocusNode? focusNode;
  final EdgeInsetsGeometry? contentPadding;
  final TextStyle? textStyle;
  final bool filled, borderless;
  final Color? fillColor;

  const InputCustom({
    super.key,
    required this.controller,
    this.prefixIcon,
    this.borderless = false,
    this.inputType = TextInputType.text,
    this.label,
    this.hintText = "Input Number",
    this.obsecure = false,
    this.focusNode,
    this.contentPadding,
    this.suffixIcon,
    this.textStyle,
    this.fillColor,
    this.filled = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        filled: filled,
        fillColor: fillColor,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: borderless
            ? const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.transparent,
                ),
              )
            : null,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        hintStyle: AssetStyles.labelMdMdReg,
        hintText: hintText,
        label: label,
        contentPadding: contentPadding,
      ),
      style: textStyle ??
          AssetStyles.labelMdRegular.copyWith(
            color: AssetColors.inkDarkest,
          ),
      keyboardType: inputType,
      obscureText: obsecure,
    );
  }
}
