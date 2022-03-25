import 'package:flutter/material.dart';

var colorSchemeLight = ColorScheme.light(
  primary: Colors.teal[700],
  onPrimary: Colors.white,
  secondary: Colors.blueGrey[600],
  onSecondary: Colors.white,
  error: Color(0xFFFF5722),
  onError: Colors.black,
  background: Colors.white,
  onBackground: Colors.grey[600],
  surface: Colors.white,
  onSurface: Colors.white,
);

var colorSchemeDark = ColorScheme.dark(
  primary: Colors.teal[900],
  onPrimary: Colors.grey[400],
  secondary: Colors.blueGrey[500],
  onSecondary: Colors.grey[400],
  error: Colors.deepOrange[900],
  onError: Colors.black,
  background: Colors.grey[800],
  onBackground: Colors.grey[300],
  surface: Colors.teal[900],
  onSurface: Colors.grey[300],
);

ThemeData onePage({
  ThemeData base,
  ColorScheme colorScheme,
}) {
  var textTheme = base.textTheme;
  var displayTextShadow = Shadow(
    color: Colors.black,
    blurRadius: 6.0,
  );

  return base.copyWith(
    colorScheme: colorScheme,
    scaffoldBackgroundColor: colorScheme.background,
    textTheme: textTheme.copyWith(
      displayLarge: textTheme.displayLarge?.copyWith(
        color: colorScheme.primary,
        fontSize: 48,
        fontWeight: FontWeight.w300,
        shadows: [displayTextShadow],
      ),
      displaySmall: textTheme.displaySmall?.copyWith(
        color: colorScheme.onPrimary,
        fontWeight: FontWeight.w300,
        fontSize: 20,
        shadows: [displayTextShadow],
      ),
      headlineMedium: textTheme.headlineMedium?.copyWith(
        color: colorScheme.onBackground,
        fontSize: 24,
        fontWeight: FontWeight.w400,
      ),
      headlineSmall: textTheme.headlineSmall?.copyWith(
        color: colorScheme.onBackground,
        fontSize: 16,
        fontWeight: FontWeight.w400,
      ),
      titleLarge: textTheme.titleLarge?.copyWith(
        fontSize: 24,
        fontWeight: FontWeight.w300,
      ),
      bodyMedium: textTheme.bodyMedium?.copyWith(
        color: colorScheme.onBackground,
        fontWeight: FontWeight.w300,
        height: 1.75,
      ),
      bodySmall: textTheme.bodySmall?.copyWith(
        color: colorScheme.onSurface,
        fontWeight: FontWeight.w200,
      ),
    ),
  );
}

ThemeData onePageLight(ThemeData base) {
  return onePage(
    base: base,
    colorScheme: colorSchemeLight,
  );
}

ThemeData onePageDark(ThemeData base) {
  return onePage(
    base: base,
    colorScheme: colorSchemeDark,
  );
}

var footerLinkTheme = TextButtonThemeData(
  style: TextButton.styleFrom(
    padding: EdgeInsets.zero,
    minimumSize: Size(48, 48),
  ),
);
