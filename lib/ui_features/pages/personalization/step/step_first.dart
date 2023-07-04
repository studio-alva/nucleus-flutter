import 'package:flutter/material.dart';
import '../../../../config/config.dart';
import '../../../../ui_features/model/sort_model.dart';
import '../../../../ui_features/widgets/input/select_item1.dart';

class StepFirstPerson extends StatelessWidget {
  StepFirstPerson({super.key});

  final List<SortModel> tell = [
    SortModel(name: "Lose weight and increase stamina", status: true),
    SortModel(name: "Maintain weigh for health", status: false),
    SortModel(name: "Gain weight for building muscle", status: false),
  ];

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
            style: AssetStyles.t2,
          ),
          verticalSpace(10),
          const Text(
            "We will recommend diets and exercises that suit you",
            style: AssetStyles.labelMdRegular,
          ),
          verticalSpace(40),
          ...tell.map(
            (e) => SelectItem1(
              text: e.name,
              isActive: e.status,
            ),
          ),
        ],
      ),
    );
  }
}
