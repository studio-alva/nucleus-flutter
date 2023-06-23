import 'package:flutter/material.dart';
import 'package:nucleus_ui_app/config/asset_colors.dart';
import 'package:nucleus_ui_app/config/asset_styles.dart';

class ButtonPrimary extends StatelessWidget {
  double? height = 48;
  double? width = 48;
  String text;
  TextStyle? style;
  Color? color;
  Function() onTap;
  double? radius;
  EdgeInsetsGeometry? padding;
  ButtonPrimary({
    super.key,
    required this.onTap,
    required this.text,
    this.height,
    this.width,
    this.style = AssetStyles.labelButtonPrimary,
    this.color = AssetColors.primaryColor,
    this.padding,
    this.radius = 20,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        padding: padding,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius!),
          color: color,
        ),
        child: Center(
          child: Text(
            text,
            style: style,
          ),
        ),
      ),
    );
  }
}


// return GestureDetector(
//       onTap: () {
//         print("Hello");
//       },
//       
//     );