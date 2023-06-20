import 'dart:async';

import 'package:flutter/cupertino.dart';

final GlobalKey<NavigatorState> navKey = GlobalKey<NavigatorState>();
Timer? _loadTimer;

Future nextScreen(String screen) async {
  return await navKey.currentState?.pushNamed(screen);
}

void backScreen([dynamic res]) {
  navKey.currentState!.pop(res);
}
