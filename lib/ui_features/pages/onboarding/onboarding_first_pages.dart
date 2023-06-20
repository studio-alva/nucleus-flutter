import 'package:flutter/material.dart';
import '../../../config/config.dart';

class OnBoardingFirstPage extends StatelessWidget {
  BoxConstraints constraints;
  OnBoardingFirstPage({super.key, required this.constraints});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: constraints.maxWidth,
      height: constraints.maxHeight,
      padding: const EdgeInsets.only(top: 40),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "you",
                style: AssetStyles.h2,
              ),
              Text(
                "learn",
                style: AssetStyles.h2.copyWith(
                  color: AssetColors.primaryColor,
                ),
              ),
            ],
          ),
          Expanded(
            child: Container(
              child: const Image(
                image: AssetImage(AssetPaths.imageOnFirst1),
                fit: BoxFit.contain,
              ),
            ),
          ),
          Container(
            child: const Text(
              "Create brilliant learning pathways",
              style: AssetStyles.h2,
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
