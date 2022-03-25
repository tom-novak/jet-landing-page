import 'package:flutter/material.dart';

typedef OnActionCallback = Function();

class PageCover extends StatelessWidget {
  static const EdgeInsetsGeometry defaultPagePadding = EdgeInsets.all(32);

  final String title;
  final String subtitle;
  final String actionLabel;
  final OnActionCallback actionCallback;
  final EdgeInsetsGeometry pagePadding;
  final TextStyle titleTextStyle;
  final TextStyle subtitleTextStyle;

  PageCover({
    this.title,
    this.subtitle,
    this.actionLabel,
    this.actionCallback,
    this.pagePadding = defaultPagePadding,
    this.titleTextStyle,
    this.subtitleTextStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: pagePadding,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            textAlign: TextAlign.center,
            style: titleTextStyle ?? Theme.of(context).textTheme.displayLarge,
          ),
          Padding(
            padding: EdgeInsets.only(top: 16, bottom: 24),
            child: Text(subtitle,
                textAlign: TextAlign.center,
                style: subtitleTextStyle ??
                    Theme.of(context).textTheme.displaySmall),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text(actionLabel),
          ),
        ],
      ),
    );
  }
}
