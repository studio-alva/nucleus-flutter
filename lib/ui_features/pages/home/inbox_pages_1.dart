import 'package:flutter/material.dart';
import '../../../config/config.dart';
import '../../widgets/appbar/appbar_chat.dart';
import '../../widgets/button_primary.dart';
import '../../widgets/chat/chat_view.dart';

class InboxPages1 extends StatelessWidget {
  static const String inboxPages = "inboxPages";
  InboxPages1({super.key});

  final List<Map<String, dynamic>> data = [
    {
      "name": "Josiah Zayner",
      "status": "Hi there!",
      "message": "How are you today?",
      "read": false,
      "avatar": "",
      "date": "9.56 AM"
    },
    {
      "name": "Jillian Jacob",
      "status": "It’s been a while",
      "message": "How are you?",
      "read": false,
      "avatar": "",
      "date": "yesterday"
    },
    {
      "name": "Victoria Hanson",
      "status": "Photos from holiday",
      "message": "Hi, I put together some photos from...",
      "read": true,
      "avatar": "",
      "date": "5 Mar"
    },
    {
      "name": "Victoria Hanson",
      "status": "Lates order delivery",
      "message": "Good morning! Hope you are good..",
      "read": true,
      "avatar": "",
      "date": "4 Mar"
    },
    {
      "name": "Peter Landt",
      "status": "Service confirmation",
      "message": "Respected Sir, I Peter, your computer...",
      "read": true,
      "avatar": "",
      "date": "4 Mar"
    },
    {
      "name": "Janice Nelson",
      "status": "Re: Blog for beta relea...",
      "message": "Hi, Please take a look at the beta...",
      "read": true,
      "avatar": "",
      "date": "3 Mar"
    },
    {
      "name": "James Norris",
      "status": "Fwd: Event Updated",
      "message": "samuel@goodman@zara.com Invite...",
      "read": true,
      "avatar": "",
      "date": "3 Mar"
    },
  ];

  @override
  Widget build(BuildContext context) {
    TextEditingController search = TextEditingController();

    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppBarChat(search: search),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Inbox",
                        style: AssetStyles.t2,
                      ),
                      ButtonPrimary(
                        onTap: () {},
                        text: "Write",
                        width: 80,
                        height: 40,
                      ),
                    ],
                  ),
                ),
                verticalSpace(10),
                ChatView(
                  data: data
                      .where((element) => element["read"] == false)
                      .toList(),
                  read: false,
                ),
                verticalSpace(10),
                ChatView(
                  data:
                      data.where((element) => element["read"] == true).toList(),
                  read: true,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
