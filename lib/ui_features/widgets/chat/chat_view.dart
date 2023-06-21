import 'package:flutter/material.dart';
import '../../../config/config.dart';
import 'chat_person_item.dart';

class ChatView extends StatelessWidget {
  const ChatView({
    super.key,
    required this.data,
    required this.read,
  });

  final List<Map<String, dynamic>> data;
  final bool read;

  @override
  Widget build(BuildContext context) {
    return (data.isNotEmpty)
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                read ? "Others" : "Unread - ${data.length}",
                style: AssetStyles.h3,
                textAlign: TextAlign.left,
              ),
              verticalSpace(20),
              Column(
                children: data
                    .where((element) => element["read"] == read)
                    .map((e) => ChatPersonItem(
                          dataChat: e,
                        ))
                    .toList(),
              ),
            ],
          )
        : Container();
  }
}
