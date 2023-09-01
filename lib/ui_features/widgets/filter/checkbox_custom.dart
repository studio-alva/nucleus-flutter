import 'package:flutter/material.dart';
import '../../../config/config.dart';

class CheckBoxCustom extends StatelessWidget {
  final Function(bool?)? onChange;
  final String? text;
  const CheckBoxCustom({
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
          style: AssetStyles.labelMdRegular,
        ),
        SizedBox(
          width: 25,
          height: 25,
          child: Checkbox(
            value: isChecked,
            onChanged: onChange,
            side: const BorderSide(
              color: AssetColors.skyBase,
            ),
            activeColor: AssetColors.primaryBase,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
          ),
        )
      ],
    );
  }
}
