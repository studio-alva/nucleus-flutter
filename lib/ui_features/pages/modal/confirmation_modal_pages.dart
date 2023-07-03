import 'package:flutter/material.dart';
import 'package:nucleus_ui_app/config/ui_helper.dart';

class ConfirmationModalPages extends StatelessWidget {
  const ConfirmationModalPages({super.key});
  static const String confirmationModalPages = "confirmationModalPages";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (context) => Container(
                height: screenHeight(context) * 0.4,
                color: Colors.amber,
              ),
            );
          },
          child: const Text("Show Modal"),
        ),
      ),
    );
  }
}
