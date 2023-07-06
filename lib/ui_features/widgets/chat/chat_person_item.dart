import 'package:flutter/material.dart';
import '../../../config/config.dart';

class ChatPersonItem extends StatelessWidget {
  Map<String, dynamic> dataChat;

  ChatPersonItem({
    super.key,
    required this.dataChat,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CircleAvatar(
            backgroundImage: AssetImage(AssetPaths.imageAvatar1),
          ),
          horizontalSpace(10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  dataChat["name"],
                  style: AssetStyles.labelSmReguler,
                ),
                verticalSpace(2),
                Text(
                  dataChat["status"],
                  style: AssetStyles.labelSmReguler
                      .copyWith(fontWeight: FontWeight.w700),
                ),
                verticalSpace(2),
                Text(
                  dataChat["message"],
                  style: AssetStyles.labelSmReguler.copyWith(
                    color: AssetColors.inkLight,
                  ),
                ),
              ],
            ),
          ),
          Text(
            dataChat["date"],
            style: AssetStyles.labelSmReguler.copyWith(
              color: AssetColors.inkLight,
            ),
          ),
        ],
      ),
    );
  }
}
