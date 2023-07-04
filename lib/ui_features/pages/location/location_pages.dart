import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nucleus_ui_app/ui_features/model/location_model.dart';
import '../../../config/config.dart';
import '../../widgets/appbar/appbar_primary.dart';
import '../../widgets/input/input_custom.dart';
import '../../widgets/location/location_item.dart';

class ChooseLocationPages extends StatefulWidget {
  static const String locationPages = "locationPages";
  const ChooseLocationPages({
    super.key,
  });

  @override
  State<ChooseLocationPages> createState() => _ChooseLocationPagesState();
}

class _ChooseLocationPagesState extends State<ChooseLocationPages> {
  final location = TextEditingController();
  final List<LocationModel> locations = [
    LocationModel(
        name: "18th Street Brewery", address: "Oakley Avenue, Hammond, IN"),
    LocationModel(name: "18th Avenue", address: "Brooklyn, NY"),
  ];

  List<LocationModel> temp = [];

  bool? search;
  @override
  void initState() {
    // TODO: implement initState

    super.initState();
    temp = locations;
    // search = false;
    location.addListener(_printLatestValue);
  }

  void _printLatestValue() {
    temp = locations
        .where((element) =>
            element.name.toLowerCase().contains(location.text.toLowerCase()))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarPrimary(),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        width: screenWidth(context),
        height: screenHeight(context),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Find nearby shop",
              style: AssetStyles.t2,
            ),
            verticalSpace(10),
            const Text(
              "Enter your location to find them.",
              style: AssetStyles.labelMdRegular,
            ),
            verticalSpace(30),
            InputCustom(
              controller: location,
              prefixIcon: SvgPicture.asset(
                AssetPaths.iconSearch,
                fit: BoxFit.scaleDown,
              ),
              hintText: "Find Location",
            ),
            verticalSpace(15),
            Flexible(
              child: (temp.isNotEmpty)
                  ? ListView.builder(
                      itemCount: temp.length,
                      itemBuilder: (context, index) =>
                          LocationItem(data: temp[index]),
                    )
                  : const Center(
                      child: Text("Data Tidak Ditemukan"),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
