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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 64,
        ),
        title != null
            ? Padding(
                padding: EdgeInsets.only(top: 32, bottom: 16),
                child: Text(
                  title,
                  style: Theme.of(context).textTheme.headline5,
                ))
            : SizedBox.shrink(),
        text != null
            ? Text(
                text,
                style: textStyle ?? Theme.of(context).textTheme.bodyText1.copyWith(height: 1.75),
                textAlign: textAlign ?? defaultTextAlign,
              )
            : SizedBox.shrink(),
      ],
    );
  }
}
