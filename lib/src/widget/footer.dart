import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  static const EdgeInsets defaultPadding = EdgeInsets.all(32);

  final Widget info;
  final Widget flatNavigation;
  final Widget links;
  final Widget copyright;
  final EdgeInsets padding;
  final Color color;

  Footer({
    this.info,
    this.flatNavigation,
    this.links,
    this.copyright,
    this.padding = defaultPadding,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      color: color ?? Theme.of(context).primaryColor,
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              info != null
                  ? Expanded(
                      child: info,
                      flex: 3,
                    )
                  : SizedBox.shrink(),
              flatNavigation != null
                  ? Expanded(
                      child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 32.0),
                          child: flatNavigation),
                      flex: 2,
                    )
                  : SizedBox.shrink(),
              links != null
                  ? Expanded(
                      child: links,
                      flex: 1,
                    )
                  : SizedBox.shrink(),
            ],
          ),
          Row(
            children: [
              copyright != null ? copyright : SizedBox.shrink(),
            ],
          ),
        ],
      ),
    );
  }
}
