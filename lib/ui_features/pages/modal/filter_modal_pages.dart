import 'package:flutter/material.dart';

class FilterModalPages extends StatelessWidget {
  const FilterModalPages({super.key});
  static const String filterModalPages = "filterModalPages";

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
