import 'package:flutter/material.dart';

class TextCard extends StatelessWidget {
  static final TextAlign defaultTextAlign = TextAlign.start;

  final IconData icon;
  final String title;
  final String text;
  final TextStyle textStyle;
  final TextAlign textAlign;

  TextCard({
    this.icon,
    this.title,
    this.text,
    this.textAlign,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    var colorScheme = Theme.of(context).colorScheme;
    var textTheme = Theme.of(context).textTheme;
    return Container(
      color: colorScheme.background,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 64,
            color: colorScheme.onBackground,
          ),
          title != null
              ? Padding(
                  padding: EdgeInsets.only(top: 32, bottom: 16),
                  child: Text(
                    title,
                    style: textTheme.headlineMedium.copyWith(
                      color: colorScheme.onBackground,
                    ),
                  ))
              : SizedBox.shrink(),
          text != null
              ? Text(
                  text,
                  style: textStyle ??
                      textTheme.bodyMedium.copyWith(
                        height: 1.75,
                        color: colorScheme.onBackground,
                      ),
                  textAlign: textAlign ?? defaultTextAlign,
                )
              : SizedBox.shrink(),
        ],
      ),
    );
  }
}
