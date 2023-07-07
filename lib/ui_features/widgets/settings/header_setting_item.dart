import 'package:flutter/material.dart';
import '../../../config/config.dart';

class HeaderSettingItem extends StatelessWidget {
  final String title;
  const HeaderSettingItem({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AssetColors.skyLight,
      ),
      padding: const EdgeInsets.only(
        top: 30,
        left: 30,
        bottom: 15,
      ),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          title,
          style: AssetStyles.labelTinyReguler.copyWith(
            color: AssetColors.inkLight,
          ),
        ),
      ),
    );
  }
}
