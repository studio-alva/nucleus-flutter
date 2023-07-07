import 'package:flutter/material.dart';
import '../../../ui_features/widgets/text_button.dart';
import '../../../ui_features/widgets/appbar/appbar_primary.dart';
import '../../../ui_features/widgets/button_primary.dart';
import '../../widgets/filter/switch_custom.dart';
import '../../../config/config.dart';
import '../../widgets/filter/checkbox_custom.dart';
import '../../widgets/filter/filter_combo.dart';

class FilterPages extends StatefulWidget {
  const FilterPages({super.key});
  static const String filterPages = "filterPages";

  @override
  State<FilterPages> createState() => _FilterPagesState();
}

class _FilterPagesState extends State<FilterPages> {
  List<bool> isChecked = [
    false,
    true,
    false,
    true,
    false,
  ];

  bool isCondition = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarPrimary(
        text: "Filter",
        actions: [
          Container(
            margin: const EdgeInsets.only(
              top: 20,
              right: 25,
            ),
            child: TextButtonCustom(
              text: "Reset",
              onTap: () {},
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(
            left: 30,
            right: 30,
          ),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(children: [
                    FilterComboBox(
                      title: "Shop Location",
                      subTitle: "Anywhere",
                      onTap: () {},
                    ),
                    verticalSpace(15),
                    const Divider(
                      thickness: 1,
                    ),
                    verticalSpace(15),
                    FilterComboBox(
                      title: "Condition",
                      subTitle: "",
                      isActive: isCondition,
                      onTap: () {
                        setState(() {
                          isCondition = !isCondition;
                        });
                      },
                    ),
                    Visibility(
                      visible: isCondition,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          verticalSpace(10),
                          CheckBoxCustom(
                            text: "New",
                            isChecked: isChecked[0],
                            onChange: (p0) {
                              setState(() {
                                isChecked[0] = !isChecked[0];
                              });
                            },
                          ),
                          verticalSpace(20),
                          CheckBoxCustom(
                            text: "New Other",
                            isChecked: isChecked[1],
                            onChange: (p0) {
                              setState(() {
                                isChecked[1] = !isChecked[1];
                              });
                            },
                          ),
                          verticalSpace(20),
                          CheckBoxCustom(
                            text: "Unused",
                            isChecked: isChecked[2],
                            onChange: (p0) {
                              setState(() {
                                isChecked[2] = !isChecked[2];
                              });
                            },
                          ),
                          verticalSpace(15),
                        ],
                      ),
                    ),
                    const Divider(
                      thickness: 1,
                    ),
                    verticalSpace(10),
                    FilterComboBox(
                      title: "Price",
                      subTitle: "Under \$100",
                      onTap: () {},
                    ),
                    verticalSpace(10),
                    const Divider(
                      thickness: 1,
                    ),
                    verticalSpace(10),
                    SwitchCustom(
                      text: "In Stock",
                      isChecked: isChecked[3],
                      onChange: (p0) {
                        setState(() {
                          isChecked[3] = !isChecked[3];
                        });
                      },
                    ),
                    verticalSpace(10),
                    const Divider(
                      thickness: 1,
                    ),
                    verticalSpace(10),
                    SwitchCustom(
                      text: "Sale",
                      isChecked: isChecked[4],
                      onChange: (p0) {
                        setState(() {
                          isChecked[4] = !isChecked[4];
                        });
                      },
                    ),
                  ]),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 20),
                child: ButtonPrimary(
                  onTap: () {
                    print("OK");
                  },
                  text: "Search",
                  width: screenWidth(context) * 0.9,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
