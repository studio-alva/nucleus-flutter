import 'package:flutter/material.dart';

class ButtonIconRoundedNoBorder extends StatelessWidget {
  double? width = 56;
  double? height = 56;
  String icon;
  Function() onTap;
  BoxDecoration? decoration = const BoxDecoration(
    shape: BoxShape.circle,
  );
  ButtonIconRoundedNoBorder({
    super.key,
    required this.onTap,
    this.height,
    this.width,
    required this.icon,
    this.decoration,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: decoration,
        width: width,
        height: height,
        child: SvgPicture.asset(
          icon,
          fit: BoxFit.scaleDown,
        ),
      ),
    );
  }
}
