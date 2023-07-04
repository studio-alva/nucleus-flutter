import 'package:flutter/material.dart';
import '../../../config/config.dart';

class OnBoardingFirstPage extends StatelessWidget {
  final BoxConstraints constraints;
  const OnBoardingFirstPage({super.key, required this.constraints});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: constraints.maxWidth,
      height: constraints.maxHeight,
      padding: const EdgeInsets.only(top: 40),
      child: Column(
        children: [
          RichText(
            text: TextSpan(
              children: [
                const TextSpan(
                  text: "you",
                  style: AssetStyles.t3,
                ),
                TextSpan(
                  text: "learn",
                  style: AssetStyles.t3.copyWith(
                    color: AssetColors.primaryBase,
                  ),
                ),
              ],
            ),
          ),
          const Expanded(
            child: Image(
              image: AssetImage(AssetPaths.imageOnFirst1),
              fit: BoxFit.contain,
            ),
          ),
          const Text(
            "Create brilliant learning pathways",
            style: AssetStyles.t3,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
