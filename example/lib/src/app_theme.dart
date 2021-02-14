import 'package:flutter/material.dart';

// ----- Common -----
var platform = TargetPlatform.iOS;
var typography = Typography.material2018(platform: platform);

// ----- Light Theme -----
var accentColor = Colors.teal[700];
var textColor = Colors.grey[600];
var appTheme = ThemeData(
  primaryColor: Colors.white,
  accentColor: accentColor,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  textTheme: typography.black.copyWith(
    headline1: typography.black.headline1.copyWith(color: accentColor, fontSize: 48),
    headline2: typography.black.headline2.copyWith(color: accentColor, fontSize: 24),
    headline3: typography.black.headline3.copyWith(color: textColor, fontSize: 24, fontWeight: FontWeight.w500),
    headline4: typography.white.headline4.copyWith(fontSize: 24, fontWeight: FontWeight.w300),
    headline6: typography.white.headline6.copyWith(fontWeight: FontWeight.w300),
    bodyText1: typography.black.bodyText1.copyWith(color: textColor, fontWeight: FontWeight.w300, height: 1.75),
    bodyText2: typography.white.bodyText2.copyWith(fontWeight: FontWeight.w200),
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      primary: accentColor,
    ),
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    selectedItemColor: accentColor,
  ),
  buttonTheme: ButtonThemeData(
    buttonColor: accentColor,
    textTheme: ButtonTextTheme.primary,
    height: 48,
  ),
);

// ----- Dark Theme -----
var darkAccentColor = Colors.teal[900];
var darkTextColor = Colors.grey[300];
var darkTheme = ThemeData(
  accentColor: darkAccentColor,
  brightness: Brightness.dark,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  textTheme: typography.white.copyWith(
    headline1: typography.white.headline1.copyWith(color: darkAccentColor, fontSize: 48),
    headline2: typography.white.headline2.copyWith(color: darkAccentColor, fontSize: 24),
    headline3: typography.white.headline3.copyWith(color: darkTextColor, fontSize: 24, fontWeight: FontWeight.w500),
    headline4: typography.white.headline4.copyWith(color: darkTextColor, fontSize: 24, fontWeight: FontWeight.w300),
    headline6: typography.white.headline6.copyWith(color: Colors.grey[300], fontWeight: FontWeight.w300),
    bodyText1: typography.white.bodyText1.copyWith(color: darkTextColor, fontWeight: FontWeight.w300, height: 1.75),
    bodyText2: typography.white.bodyText2.copyWith(color: Colors.grey[300], fontWeight: FontWeight.w200),
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      primary: darkAccentColor,
    ),
  ),
  buttonTheme: ButtonThemeData(
    buttonColor: darkAccentColor,
    textTheme: ButtonTextTheme.primary,
    height: 48,
  ),
);

var footerLinkTheme = TextButtonThemeData(
  style: TextButton.styleFrom(
    padding: EdgeInsets.zero,
    minimumSize: Size(48, 48),
  ),
);
