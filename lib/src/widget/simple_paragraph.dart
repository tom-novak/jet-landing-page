import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SimpleParagraph extends StatelessWidget {
  static const EdgeInsets defaultPadding = EdgeInsets.all(32);
  static const TextAlign defaultTextAlign = TextAlign.start;

  final String title;
  final String text;
  final TextStyle titleStyle;
  final TextStyle textStyle;
  final EdgeInsets padding;
  final CrossAxisAlignment alignment;
  final TextAlign textAlign;

  SimpleParagraph({
    this.title = '',
    this.text = '',
    this.padding = defaultPadding,
    this.titleStyle,
    this.textStyle,
    this.alignment = CrossAxisAlignment.start,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Column(
        crossAxisAlignment: alignment,
        children: [
          title != null
              ? Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Text(
                    title,
                    style: titleStyle ?? Theme.of(context).textTheme.headline3,
                  ),
              )
              : SizedBox.shrink(),
          Text(
            text,
            style: textStyle ?? Theme.of(context).textTheme.bodyText1,
            textAlign: textAlign ?? defaultTextAlign,
          ),
        ],
      ),
    );
  }
}
