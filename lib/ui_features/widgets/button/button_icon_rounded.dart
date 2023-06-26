import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../config/config.dart';

class ButtonIconRounded extends StatelessWidget {
  String icon;
  double? width, height;
  Function() onTap;
  Color? color;
  ButtonIconRounded({
    super.key,
    required this.icon,
    required this.onTap,
    this.width = 50,
    this.height = 50,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
          border: Border.all(
            color: AssetColors.inkDarkest.withOpacity(0.2),
          ),
        ),
        child: Center(
          child: SvgPicture.asset(icon),
        ),
      ),
    );
  }
}
