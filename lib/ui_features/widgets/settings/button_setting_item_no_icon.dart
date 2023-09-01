import 'package:flutter/material.dart';
import '../../../config/config.dart';

class ButtonSettingItemNoIcon extends StatelessWidget {
  final String text;
  final Function()? onTap;
  const ButtonSettingItemNoIcon({
    super.key,
    required this.text,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.centerLeft,
        height: 50,
        width: screenWidth(context),
        child: Text(
          text,
          style: AssetStyles.labelMdRegular,
        ),
      ),
    );
  }
}
