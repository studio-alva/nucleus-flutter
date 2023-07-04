import 'package:flutter/material.dart';
import 'package:nucleus_ui_app/config/asset_colors.dart';
import 'package:nucleus_ui_app/config/asset_styles.dart';

const fontFamily = 'Inter';
final theme = ThemeData(
    fontFamily: fontFamily,
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: {
        TargetPlatform.android: CupertinoPageTransitionsBuilder(),
      },
    ),
    textTheme: const TextTheme(
      displaySmall: AssetStyles.labelSmReguler,
      displayMedium: AssetStyles.labelMdRegular,
      displayLarge: AssetStyles.labelLgRegular,
      bodySmall: AssetStyles.labelTinyReguler,
      bodyMedium: AssetStyles.labelMdRegular,
      bodyLarge: AssetStyles.labelLgRegular,
    ));
