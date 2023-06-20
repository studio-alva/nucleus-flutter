import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../ui_features/pages/signin_signup/signin_pages_by_email.dart';
import '../../../ui_features/widgets/button_primary.dart';
import '../../../ui_features/widgets/input/flag_country_number.dart';
import '../../../ui_features/widgets/text_button.dart';
import '../../../config/config.dart';
import '../../widgets/appbar/appbar_primary.dart';
import '../../widgets/input/input_custom.dart';

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
  List<Map<String, String>> temp = [];
  List<Map<String, String>> locations = [
    {
      "name": "18th Street Brewery",
      "address": "Oakley Avenue, Hammond, IN",
    },
    {
      "name": "18th Avenue",
      "address": "Brooklyn, NY",
    },
  ];

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
        .where((element) => element["name"]!
            .toLowerCase()
            .contains(location.text.toLowerCase()))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    print("OK");
    return Scaffold(
      appBar: AppBarPrimary(
        heightAppBar: 50,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        width: screenWidth(context),
        height: screenHeight(context),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Find nearby shop",
              style: AssetStyles.h1,
            ),
            verticalSpace(10),
            Text(
              "Enter your location to find them.",
              style: AssetStyles.h3.copyWith(
                fontWeight: FontWeight.normal,
              ),
            ),
            verticalSpace(30),
            Container(
              width: screenWidth(context),
            ),
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
              child: (temp.length != 0)
                  ? ListView.builder(
                      itemCount: temp.length,
                      itemBuilder: (context, index) => Container(
                        padding: const EdgeInsets.all(20),
                        child: Row(
                          children: [
                            Container(
                              child: SvgPicture.asset(AssetPaths.iconPlace),
                            ),
                            horizontalSpace(20),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(temp[index]["name"]!),
                                verticalSpace(5),
                                Text(temp[index]["address"]!),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  : Center(
                      child: Text("Data Tidak Ditemukan"),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
