import 'package:flutter/material.dart';
import 'package:nucleus_ui_app/config/config.dart';
import 'package:nucleus_ui_app/ui_features/widgets/input/select_item.dart';
import 'package:nucleus_ui_app/ui_features/widgets/input/select_item1.dart';

class StepFirstPerson extends StatelessWidget {
  const StepFirstPerson({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          verticalSpace(20),
          const Text(
            "Tell us your goal",
            style: AssetStyles.h1,
          ),
          verticalSpace(10),
          const Text(
            "We will recommend diets and exercises that suit you",
            style: AssetStyles.labelMdMdReg,
          ),
          verticalSpace(50),
          SelectItem1(
            text: "Lose weight and increase stamina",
            bgColor: AssetColors.primaryLightest,
            style: AssetStyles.labelMdMdReg
                .copyWith(color: AssetColors.primaryColor),
          ),
          verticalSpace(20),
          SelectItem1(
            text: "Maintain weigh for health",
            style: AssetStyles.labelMdMdReg,
          ),
          verticalSpace(20),
          SelectItem1(
            text: "Gain weight for building muscle",
            style: AssetStyles.labelMdMdReg,
          ),
        ],
      ),
    );
  }
}
