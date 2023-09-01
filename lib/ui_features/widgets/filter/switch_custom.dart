import 'package:flutter/cupertino.dart';
import '../../../config/config.dart';

class SwitchCustom extends StatelessWidget {
  final Function(bool?)? onChange;
  final String? text;
  const SwitchCustom({
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
          style: AssetStyles.labelMdRegular.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          width: 25,
          height: 25,
          child: CupertinoSwitch(
            value: isChecked,
            onChanged: onChange,
            activeColor: AssetColors.primaryBase,
          ),
        )
      ],
    );
  }
}
