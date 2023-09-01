import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nucleus_ui_app/ui_features/widgets/chip/primary_chip.dart';
import '../../../config/config.dart';
import '../../../ui_features/model/place_model.dart';
import '../../../ui_features/widgets/map/place_item.dart';

class MapPages extends StatefulWidget {
  const MapPages({super.key});
  static const String mapPages = "mapPages";
  @override
  State<MapPages> createState() => _MapPagesState();
}

class _MapPagesState extends State<MapPages> {
  List<Place> places = [
    Place(
      title: "Entire House",
      subtitle: "Huntington Beach Bungalow",
      price: 250,
      time: "night",
      rating: 4.65,
      images: AssetPaths.imageHotel1,
    ),
    Place(
      title: "Entire House",
      subtitle: "Perfect Beach House in New...",
      price: 320,
      time: "night",
      rating: 4.65,
      images: AssetPaths.imageHotel2,
    ),
    Place(
      title: "Entire House",
      subtitle: "Huntington Beach Bungalow",
      price: 250,
      time: "night",
      rating: 4.65,
      images: AssetPaths.imageHotel1,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: screenWidth(context),
            height: screenHeight(context) * 0.8,
            child: const Image(
              image: AssetImage(
                AssetPaths.imageMaps,
              ),
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: screenHeight(context),
            width: screenWidth(context),
            child: Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  height: screenHeight(context),
                  width: screenWidth(context),
                ),
                for (var i in [
                  "\$125",
                  "\$150",
                  "\$160",
                  "\$180",
                  "\$240",
                  "\$320",
                  "\$250",
                  "\$140",
                  "\$190",
                  "\$290",
                ])
                  Positioned(
                    top: 60 + (Random().nextDouble() * 256),
                    left: Random().nextDouble() * 256,
                    child: PrimaryChip(
                      label: i,
                    ),
                  ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: paddingTopApp(context),
            ),
            child: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                AssetPaths.iconClose,
                fit: BoxFit.scaleDown,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              margin: const EdgeInsets.only(bottom: 30),
              padding: const EdgeInsets.only(left: 10, right: 10),
              height: screenHeight(context) * 0.3,
              child: ListView.builder(
                itemCount: places.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) =>
                    PlaceItem(places: places[index]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
