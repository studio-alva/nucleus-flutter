import 'package:flutter/material.dart';
import 'package:nucleus_ui_app/config/config.dart';
import 'package:nucleus_ui_app/ui_features/widgets/button_primary.dart';

class MenuHome extends StatelessWidget {
  MenuHome({super.key});
  static const String menuPagesAll = "menuPagesAll";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Nucleus UI Mobile Apps"),
      ),
      body: Container(
        margin: const EdgeInsets.all(20),
        child: ListView(
          children: [
            ...halaman.map(
              (e) => Container(
                margin: const EdgeInsets.only(bottom: 10),
                child: ButtonPrimary(
                  height: 50,
                  onTap: () {
                    nextScreen(e);
                  },
                  text: e,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
