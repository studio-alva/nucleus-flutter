import 'package:flutter/material.dart';
import '../../../config/config.dart';

class GreetingHeader extends StatelessWidget {
  const GreetingHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Good Morning",
                  style: AssetStyles.t2,
                ),
                verticalSpace(5),
                const Text(
                  "Monday, January 25, 2021",
                  style: AssetStyles.labelMdRegular,
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Image(
                image: AssetImage(AssetPaths.imageMatahari),
              ),
              verticalSpace(10),
              Text(
                "28\u2109",
                style: AssetStyles.labelMdRegular.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
