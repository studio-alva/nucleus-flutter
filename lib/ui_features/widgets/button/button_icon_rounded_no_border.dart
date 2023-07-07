import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

// ignore: must_be_immutable
class ButtonIconRoundedNoBorder extends StatelessWidget {
  double? width = 56;
  double? height = 56;
  final String icon;
  final Function() onTap;
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
