import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../config/asset_paths.dart';
import '../../../config/ui_helper.dart';

class FlagCountryNumber extends StatelessWidget {
  const FlagCountryNumber({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(left: 20),
        width: screenWidth(context) * 0.2,
        child: Row(
          children: [
            const Image(
              image: AssetImage(AssetPaths.iconIdn),
              fit: BoxFit.cover,
            ),
            horizontalSpace(5),
            const Text("+62"),
            horizontalSpace(5),
            SvgPicture.asset(AssetPaths.iconDown)
          ],
        ));
  }
}
