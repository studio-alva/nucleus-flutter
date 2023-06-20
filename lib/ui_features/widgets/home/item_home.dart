import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../config/asset_colors.dart';
import '../../../config/asset_paths.dart';

class HomeItem extends StatelessWidget {
  HomeItem({
    super.key,
    required this.data,
  });

  late Map<String, String> data;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AssetColors.skyWhite,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
            width: 1, color: AssetColors.inkDarkest.withOpacity(0.1)),
      ),
      margin: const EdgeInsets.all(6),
      child: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)),
                image: DecorationImage(
                  image: NetworkImage(data["images"]!),
                  fit: BoxFit.cover,
                  onError: (exception, stackTrace) =>
                      SvgPicture.asset(AssetPaths.iconNoImages),
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(5),
            child: Text(
              data["name"]!,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }
}
