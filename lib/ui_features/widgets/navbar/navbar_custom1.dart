import 'package:flutter/material.dart';
import '../../../config/config.dart';
import '../../../ui_features/model/navbar_model.dart';

class NavBarCustom1 extends StatelessWidget {
  final List<NavbarModel> data;
  final double? height;
  const NavBarCustom1({
    super.key,
    required this.data,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 70,
      child: Row(
        children: data
            .map(
              (e) => Flexible(
                flex: 1,
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(
                          top: 15,
                          left: 15,
                          right: 15,
                        ),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: e.status
                              ? Border.all(color: AssetColors.primaryBase)
                              : Border.all(),
                        ),
                      ),
                    ),
                    (e.title != "")
                        ? Column(
                            children: [
                              verticalSpace(5),
                              Text(
                                e.title,
                                style: AssetStyles.labelTinyReguler,
                              ),
                              verticalSpace(10)
                            ],
                          )
                        : verticalSpace(15),
                  ],
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
