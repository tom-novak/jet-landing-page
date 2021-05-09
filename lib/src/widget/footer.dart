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
    Key key,
    this.info,
    this.flatNavigation,
    this.links,
    this.copyright,
    this.padding = defaultPadding,
    this.color,
  }) : super(key: key);

  Widget _buildHorizontalContent(BuildContext context) {
    return Row(
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
    );
  }

  Widget _buildPortraitContent(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        info != null ? info : SizedBox.shrink(),
        flatNavigation != null
            ? Padding(
                padding: const EdgeInsets.only(top: 32),
                child: flatNavigation,
              )
            : SizedBox.shrink(),
        links != null
            ? Padding(
                padding: const EdgeInsets.only(top: 32),
                child: links,
              )
            : SizedBox.shrink(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      color: color ?? Theme.of(context).accentColor,
      child: Column(
        children: [
          MediaQuery.of(context).orientation == Orientation.portrait
              ? _buildPortraitContent(context)
              : _buildHorizontalContent(context),
          Padding(
            padding: const EdgeInsets.only(top: 32),
            child: Row(
              children: [
                copyright != null ? copyright : SizedBox.shrink(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
