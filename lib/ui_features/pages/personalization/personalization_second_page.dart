import 'package:flutter/material.dart';
import '../../../config/config.dart';
import '../../../ui_features/pages/personalization/step/step_first.dart';
import '../../../ui_features/pages/personalization/step/step_second.dart';
import '../../../ui_features/widgets/appbar/appbar_primary.dart';

class PersonalizationSeconPages extends StatefulWidget {
  static const String personalizationSecondPage = "personalizationSecondPage";
  const PersonalizationSeconPages({super.key});

  @override
  State<PersonalizationSeconPages> createState() =>
      _PersonalizationSeconPagesState();
}

class _PersonalizationSeconPagesState extends State<PersonalizationSeconPages>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late int currenStep;
  late List<Widget> stepWidget;
  late int maxStep;

  @override
  void initState() {
    super.initState();

    currenStep = 1;
    stepWidget = [
      StepFirstPerson(),
      StepTwoPerson(),
    ];

    maxStep = stepWidget.length;
    _tabController = TabController(vsync: this, length: stepWidget.length);
  }

  @override
  Widget build(BuildContext context) {
    _tabController.addListener(
      () {
        setState(
          () {
            currenStep = _tabController.index + 1;
          },
        );
      },
    );

    return Scaffold(
      appBar: const AppBarPrimary(),
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.fromLTRB(30, 0, 30, 30),
          child: Column(
            children: [
              LayoutBuilder(
                builder: (context, constraint) {
                  double step = constraint.maxWidth / maxStep;

                  return Stack(
                    children: [
                      Container(
                        width: constraint.maxWidth,
                        height: 5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AssetColors.skyLight,
                        ),
                      ),
                      Container(
                        width: step * currenStep,
                        height: 5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AssetColors.primaryBase,
                        ),
                      ),
                    ],
                  );
                },
              ),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: stepWidget,
                ),
              ),
              //Indicator
            ],
          ),
        ),
      ),
    );
  }
}
