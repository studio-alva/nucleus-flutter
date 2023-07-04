import 'package:flutter/material.dart';

final theme = ThemeData(
    pageTransitionsTheme: const PageTransitionsTheme(builders: {
  TargetPlatform.android: CupertinoPageTransitionsBuilder(),
}));
