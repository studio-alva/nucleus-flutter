import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'app/app.dart';

void main(List<String> args) {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (BuildContext context) => const App(),
    ),
  );
}
