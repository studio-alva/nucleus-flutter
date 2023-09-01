import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:nucleus_ui_app/config/asset_colors.dart';

class IndicatorImageProduct extends StatelessWidget {
  const IndicatorImageProduct({
    super.key,
    required this.imgList,
    required this.controller,
    required this.current,
  });

  final List<String> imgList;
  final CarouselController controller;
  final int current;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: imgList.asMap().entries.map((entry) {
          return GestureDetector(
            onTap: () => controller.animateToPage(entry.key),
            child: Container(
              width: 12.0,
              height: 12.0,
              margin:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: current != entry.key
                    ? Border.all(
                        color: AssetColors.inkDarkest,
                      )
                    : null,
                color: (Theme.of(context).brightness == Brightness.dark
                        ? AssetColors.inkDarkest
                        : AssetColors.inkDarkest)
                    .withOpacity(current == entry.key ? 1 : 0),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
