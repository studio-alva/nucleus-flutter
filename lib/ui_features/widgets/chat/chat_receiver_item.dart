import 'package:flutter/material.dart';

import '../../../config/config.dart';
import '../../model/chat_model.dart';

class ChatReceiverItem extends StatelessWidget {
  const ChatReceiverItem({
    super.key,
    required this.data,
  });

  final ChatModel data;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      width: double.infinity,
      child: Row(
        children: [
          const CircleAvatar(
            backgroundImage: AssetImage(
              AssetPaths.imageAvatar1,
            ),
          ),
          horizontalSpace(10),
          (data.status == 1)
              ? Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 15,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AssetColors.skyLighter,
                  ),
                  child: Text(
                    data.message,
                    style: AssetStyles.labelMdRegular,
                  ),
                )
              : Text(
                  "Typing...",
                  style: AssetStyles.labelMdMdReg.copyWith(
                    color: AssetColors.textGrey,
                  ),
                ),
        ],
      ),
    );
  }
}
