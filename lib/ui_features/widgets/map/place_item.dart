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
                      style: AssetStyles.labelSmReguler,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    verticalSpace(1),
                    Text(
                      places.subtitle,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: AssetStyles.labelMdRegular.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(
                        text: "\$${places.price}",
                        style: AssetStyles.labelMdRegular.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: "/${places.time}",
                        style: AssetStyles.labelSmReguler,
                      ),
                    ]),
                  ),
                  Row(
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
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
