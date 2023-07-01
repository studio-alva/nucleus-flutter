import 'package:flutter/material.dart';
import '../../../config/config.dart';

class ButtonSettingItemNoIcon extends StatelessWidget {
  String text;
  Function()? onTap;
  ButtonSettingItemNoIcon({
    super.key,
    required this.text,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        height: 50,
        width: screenWidth(context),
        child: Text(
          text,
          style: AssetStyles.labelMdMdReg.copyWith(
            color: AssetColors.inkDarkest,
          ),
        ),
      ),
    );
  }
}
