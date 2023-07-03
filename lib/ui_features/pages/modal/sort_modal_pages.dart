import 'package:flutter/material.dart';

class SortModalPages extends StatelessWidget {
  const SortModalPages({super.key});
  static const String sortModalPages = "sortModalPages";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {},
          child: const Text("Show Modal"),
        ),
      ),
    );
  }
}
