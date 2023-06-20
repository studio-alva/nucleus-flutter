import 'package:flutter/material.dart';
import 'package:nucleus_ui_app/config/config.dart';

class StepFirstPerson extends StatelessWidget {
  const StepFirstPerson({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
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
        ],
      ),
    );
  }
}
