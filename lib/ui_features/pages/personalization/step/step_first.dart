import 'package:flutter/material.dart';

import '../../../../config/config.dart';
import '../../../../ui_features/model/sort_model.dart';
import '../../../../ui_features/widgets/input/select_item1.dart';

class StepFirstPerson extends StatefulWidget {
  const StepFirstPerson({super.key});

  @override
  State<StepFirstPerson> createState() => _StepFirstPersonState();
}

class _StepFirstPersonState extends State<StepFirstPerson> {
  String? value;

  @override
  Widget build(BuildContext context) {
    List<SortModel> tell = [
      SortModel(name: "Lose weight and increase stamina", status: true),
      SortModel(name: "Maintain weigh for health", status: false),
      SortModel(name: "Gain weight for building muscle", status: false),
    ];
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        verticalSpace(20),
        const Text(
          "Tell us your goal",
          style: AssetStyles.t2,
        ),
        verticalSpace(10),
        const Text(
          "We will recommend diets and exercises that suit you",
          style: AssetStyles.labelMdRegular,
        ),
        verticalSpace(40),
        for (var e in tell)
          GestureDetector(
            onTap: () {
              if (value != e.name) {
                value = e.name;
              } else {
                value = null;
              }
              setState(() {});
            },
            child: SelectItem1(
              text: e.name,
              isActive: value == e.name,
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 15,
              ),
            ),
          ),
      ],
    );
  }
}
