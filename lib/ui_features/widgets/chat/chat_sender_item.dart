import 'package:flutter/material.dart';

import '../../../config/config.dart';
import '../../model/chat_model.dart';

class ChatSenderItem extends StatelessWidget {
  const ChatSenderItem({
    super.key,
    required this.data,
  });

  final ChatModel data;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          const Spacer(),
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 15,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: AssetColors.primaryBase,
            ),
            child: Text(
              data.message,
              style: AssetStyles.labelMdRegular.copyWith(
                color: AssetColors.skyWhite,
              ),
            ),
          ),
          horizontalSpace(10),
          const CircleAvatar(
            backgroundImage: AssetImage(
              AssetPaths.imageAvatar1,
            ),
          ),
        ],
      ),
    );
  }
}
