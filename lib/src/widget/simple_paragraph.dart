import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SimpleParagraph extends StatelessWidget {
  static const EdgeInsets defaultPadding = EdgeInsets.all(32);

  final String title;
  final String text;
  final TextStyle titleStyle;
  final TextStyle textStyle;
  final EdgeInsets padding;

  SimpleParagraph({
    this.title = '',
    this.text = '',
    this.padding = defaultPadding,
    this.titleStyle,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    Theme.of(context).textTheme;
    return Padding(
      padding: padding,
      child: Column(
        children: [
          title != null
              ? Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Text(
                    title,
                    style: titleStyle ?? Theme.of(context).textTheme.headline6,
                  ),
              )
              : SizedBox.shrink(),
          Text(
            text,
            style: textStyle ?? Theme.of(context).textTheme.bodyText1,
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }
}
