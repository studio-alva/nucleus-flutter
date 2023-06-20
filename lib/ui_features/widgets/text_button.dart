import 'package:flutter/material.dart';
import 'package:nucleus_ui_app/config/asset_styles.dart';

class TextButtonCustom extends StatelessWidget {
  String text;
  final Function() onTap;
  TextButtonCustom({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        text,
        style: AssetStyles.labelButtonSecondary,
      ),
    );
  }
}
