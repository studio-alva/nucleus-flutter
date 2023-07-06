import 'package:flutter/material.dart';
import '../../../config/config.dart';

class DetailRow extends StatelessWidget {
  final String? title;
  final String? subTitle;
  const DetailRow({
    super.key,
    this.subTitle,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(title!,
            style: AssetStyles.labelMdRegular.copyWith(
              fontWeight: FontWeight.bold,
            )),
        verticalSpace(5),
        Text(
          subTitle!,
          style: AssetStyles.labelMdRegular,
        ),
      ],
    );
  }
}
