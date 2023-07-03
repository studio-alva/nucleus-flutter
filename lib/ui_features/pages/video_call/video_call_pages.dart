import 'package:flutter/material.dart';
import '../../../config/config.dart';
import '../../../ui_features/widgets/appbar/appbar_primary.dart';
import '../../widgets/button/button_icon_rounded_no_border.dart';

class VideoCallPages extends StatelessWidget {
  const VideoCallPages({super.key});
  static const String videoCallPages = "videoCallPages";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: screenWidth(context),
            height: screenHeight(context),
            child: const Image(
              image: AssetImage(AssetPaths.imageVidBig),
              fit: BoxFit.cover,
            ),
          ),
          AppBarPrimary(),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              margin: EdgeInsets.only(
                top: screenHeight(context) * 0.08,
                right: screenWidth(context) * 0.05,
              ),
              width: screenWidth(context) * 0.3,
              height: screenHeight(context) * 0.2,
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                  image: AssetImage(AssetPaths.imageMVidSm),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              width: screenWidth(context),
              height: screenHeight(context) * 0.2,
              child: Column(
                children: [
                  Text(
                    "James Norris",
                    style: AssetStyles.h2.copyWith(
                      color: AssetColors.skyWhite,
                    ),
                  ),
                  verticalSpace(10),
                  Text(
                    "01:20:12",
                    style: AssetStyles.h3.copyWith(
                      color: AssetColors.skyWhite,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  verticalSpace(40),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 100),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ButtonIconRoundedNoBorder(
                          onTap: () {
                            print("Viode");
                          },
                          icon: AssetPaths.iconVideo,
                        ),
                        ButtonIconRoundedNoBorder(
                          icon: AssetPaths.iconCall,
                          height: 70,
                          width: 70,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: AssetColors.redButton,
                          ),
                          onTap: () {
                            print("End Call");
                          },
                        ),
                        ButtonIconRoundedNoBorder(
                          icon: AssetPaths.iconVoice1,
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
