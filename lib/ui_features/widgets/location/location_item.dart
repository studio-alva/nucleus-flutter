import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../config/config.dart';
import '../../model/location_model.dart';

class LocationItem extends StatelessWidget {
  const LocationItem({
    super.key,
    required this.data,
  });

  final LocationModel data;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(10),
      onTap: () {},
      child: Container(
        width: screenWidth(context),
        padding: const EdgeInsets.symmetric(
          vertical: 20,
        ),
        child: Row(
          children: [
            SvgPicture.asset(AssetPaths.iconPlace),
            horizontalSpace(20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data.name,
                  style: AssetStyles.labelMdRegular,
                ),
                verticalSpace(5),
                Text(
                  data.address,
                  style: AssetStyles.labelMdRegular.copyWith(
                    color: AssetColors.inkLighter,
                  ),
                ),
                verticalSpace(10),
                Container(
                  width: screenWidth(context) * 0.8,
                  height: 2,
                  color: AssetColors.skyLight,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
