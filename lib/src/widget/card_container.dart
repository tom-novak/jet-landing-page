import 'package:flutter/material.dart';

class CardContainer extends StatelessWidget {
  static const itemPadding = 48.0;

  final List<Widget> children;

  const CardContainer({Key key, this.children}) : super(key: key);

  List<Widget> _buildItems(BuildContext context) {
    var cards = <Widget>[];
    Widget container;
    for (var item in children) {
      container = Container(
        padding: EdgeInsets.all(itemPadding / 2),
        child: item,
      );
      if (MediaQuery.of(context).orientation == Orientation.landscape) {
        container = Flexible(child: container);
      }
      cards.add(container);
    }
    return cards;
  }

  @override
  Widget build(BuildContext context) {
    var portraitOrientation =
        MediaQuery.of(context).orientation == Orientation.portrait;
    return Container(
      padding: EdgeInsets.all(itemPadding / 2),
      child: Flex(
        direction: portraitOrientation ? Axis.vertical : Axis.horizontal,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: _buildItems(context),
      ),
    );
  }
}
