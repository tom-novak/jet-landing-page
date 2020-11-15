import 'package:flutter/material.dart';
import 'package:jet_landing_page_example/src/landing_page.dart';

void main() {
  var theme = ThemeData(
    primaryColor: Colors.green.shade700,
    primarySwatch: Colors.green,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );

  runApp(MyApp(theme));
}

class MyApp extends StatelessWidget {
  final ThemeData theme;

  MyApp(this.theme);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: theme ?? Theme.of(context),
      home: LandingPage(),
    );
  }
}
