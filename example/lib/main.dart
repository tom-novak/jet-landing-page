import 'package:flutter/material.dart';
import 'package:jet_landing_page_example/src/example_page.dart';

var platform = TargetPlatform.iOS;
var typography = Typography.material2018(platform: platform);

var accentColor = Colors.green[700];
var appTheme = ThemeData(
  primaryColor: Colors.white,
  accentColor: accentColor,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  textTheme: typography.black.copyWith(
      headline1: typography.black.headline1.copyWith(color: accentColor, fontSize: 48),
      headline2: typography.black.headline2.copyWith(color: accentColor, fontSize: 24),
      headline3: typography.black.headline3.copyWith(fontSize: 24),
      headline4: typography.black.headline4.copyWith(fontSize: 24),
      headline6: typography.white.headline6,
      bodyText2: typography.white.bodyText2,
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    selectedItemColor: accentColor,
  ),
);

var darkAccentColor = Colors.green[900];
var darkTheme = ThemeData(
  accentColor: darkAccentColor,
  brightness: Brightness.dark,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  textTheme: typography.white.copyWith(
    headline1: typography.white.headline1.copyWith(color: darkAccentColor, fontSize: 48),
    headline2: typography.white.headline2.copyWith(color: darkAccentColor, fontSize: 24),
    headline3: typography.white.headline3.copyWith(fontSize: 24),
    headline4: typography.white.headline4.copyWith(fontSize: 24),
    headline6: typography.white.headline6.copyWith(color: Colors.grey[400]),
    bodyText2: typography.white.bodyText2.copyWith(color: Colors.grey[400]),
  ),
);

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
      themeMode: ThemeMode.dark,
      home: ExamplePage(),
    );
  }
}
