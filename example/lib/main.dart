import 'package:flutter/material.dart';
import 'package:jet_landing_page_example/src/app_theme.dart';
import 'package:jet_landing_page_example/src/example_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: appTheme,
      darkTheme: darkTheme,
      home: ExamplePage(),
    );
  }
}
