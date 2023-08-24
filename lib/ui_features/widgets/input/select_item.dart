import 'package:flutter/material.dart';
import '../../../config/config.dart';

class SelectItem extends StatelessWidget {
  final Color? bgColor;
  final String? text;
  final double? height;
  final double? radius;
  final bool? isActive;

  final Function()? onTap;
  const SelectItem({
    super.key,
    this.bgColor,
    this.text = "",
    this.height,
    this.radius = 15,
    this.onTap,
    this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 15),
        height: height ?? 50,
        decoration: BoxDecoration(
          color:
              isActive! ? AssetColors.primaryLightest : AssetColors.skyLighter,
          borderRadius: BorderRadius.circular(radius!),
        ),
        child: Center(
          child: Text(
            text!,
            style: AssetStyles.labelMdRegular.copyWith(
              color:
                  isActive! ? AssetColors.primaryBase : AssetColors.inkDarkest,
            ),
          ),
        ),
      ),
    );
  }
}
