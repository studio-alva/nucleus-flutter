import "package:flutter/material.dart";
import '../config/config.dart';
import '../config/strings.dart';
import './app_theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Strings.appName,
      theme: theme,
      debugShowCheckedModeBanner: false,
      navigatorKey: navKey,
      initialRoute: initialRoutes,
      routes: routes,
    );
  }
}
