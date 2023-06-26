import 'package:flutter/material.dart';
import '../../../config/config.dart';

class CheckBoxCustom extends StatelessWidget {
  Function(bool?)? onChange;
  String? text;
  CheckBoxCustom({
    super.key,
    required this.isChecked,
    this.onChange,
    this.text,
  });

  final bool isChecked;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text!,
          style: AssetStyles.labelMdMdReg.copyWith(
            color: AssetColors.inkDarkest,
          ),
        ),
        Container(
          width: 25,
          height: 25,
          child: Checkbox(value: isChecked, onChanged: onChange),
        )
      ],
    );
  }
}
