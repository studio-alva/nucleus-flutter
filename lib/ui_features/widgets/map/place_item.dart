import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../config/config.dart';
import '../../../ui_features/model/place_model.dart';

class PlaceItem extends StatelessWidget {
  const PlaceItem({
    super.key,
    required this.places,
  });

  final Place places;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (ctx, constraint) {
        return Container(
          width: screenWidth(context) * 0.6,
          height: constraint.maxHeight,
          margin: const EdgeInsets.only(right: 10, left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: constraint.maxHeight * 0.65,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(places.images),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              verticalSpace(10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      places.title,
                      style: AssetStyles.labelMdSmReg1,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    verticalSpace(1),
                    Text(
                      places.subtitle,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: AssetStyles.labelMdMdReg.copyWith(
                        color: AssetColors.inkDarkest,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Text(
                          "\$${places.price}",
                          style: AssetStyles.labelMdMdReg.copyWith(
                            fontWeight: FontWeight.bold,
                            color: AssetColors.inkDarkest,
                          ),
                        ),
                        Text(
                          "/${places.time}",
                          style: AssetStyles.labelMdSmReg1.copyWith(
                            color: AssetColors.inkDarkest,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        SvgPicture.asset(AssetPaths.iconRating),
                        horizontalSpace(5),
                        Text(
                          "${places.rating}",
                          style: AssetStyles.labelMdMdReg.copyWith(
                            fontWeight: FontWeight.bold,
                            color: AssetColors.inkDarkest,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
