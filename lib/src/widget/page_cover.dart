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
        children: [
          Text(
            title,
            textAlign: TextAlign.center,
            style: titleTextStyle != null
                ? titleTextStyle
                : TextStyle(
                    color: Theme.of(context).primaryColor, fontSize: 48),
          ),
          Padding(
            padding: EdgeInsets.only(top: 16, bottom: 24),
            child: Text(
              subtitle,
              textAlign: TextAlign.center,
              style: subtitleTextStyle != null
                  ? subtitleTextStyle
                  : TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
            ),
          ),
          MaterialButton(
            onPressed: () {},
            child: Text(actionLabel),
            color: Theme.of(context).primaryColor,
            textColor: Colors.white,
            padding: EdgeInsetsDirectional.only(
              start: 16,
              top: 16,
              end: 16,
              bottom: 16,
            ),
          ),
        ],
      ),
    );
  }
}
