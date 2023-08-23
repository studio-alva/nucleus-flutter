import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../config/config.dart';
import '../input/input_custom.dart';

class AppBarChat extends StatelessWidget {
  const AppBarChat({
    super.key,
    required this.search,
  });

  final TextEditingController search;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: InputCustom(
            controller: search,
            hintText: "Search Email",
            filled: true,
            borderless: true,
            fillColor: AssetColors.skyLighter,
            contentPadding: const EdgeInsetsDirectional.symmetric(vertical: 5),
            prefixIcon: SvgPicture.asset(
              AssetPaths.iconSearch,
              width: 10,
              height: 10,
              fit: BoxFit.scaleDown,
            ),
          ),
        ),
        horizontalSpace(20),
        const CircleAvatar(
          backgroundImage: AssetImage(AssetPaths.imageAvatar1),
        ),
      ],
    );
  }
}
