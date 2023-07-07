import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../config/config.dart';
import '../../../ui_features/model/place_model.dart';
import '../../../ui_features/widgets/appbar/appbar_primary.dart';
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
          AppBarPrimary(
            leading: SvgPicture.asset(
              AssetPaths.iconClose,
              fit: BoxFit.scaleDown,
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
