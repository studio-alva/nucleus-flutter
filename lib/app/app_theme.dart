import 'package:flutter/material.dart';
import '../config/config.dart';

final theme = ThemeData(
    pageTransitionsTheme: const PageTransitionsTheme(builders: {
  TargetPlatform.android: CupertinoPageTransitionsBuilder(),
}));
