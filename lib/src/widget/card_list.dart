import 'package:flutter/material.dart';

class CardList extends StatelessWidget {
  final List<Widget> children;

  CardList({this.children});

  @override
  Widget build(BuildContext context) {
    var cards = <Widget>[];
    for (var i = 0; i < children.length; i++) {
      cards.add(children[i]);
    }

    return Padding(
      padding: EdgeInsets.all(32),
      child: Column(
        children: cards,
      ),
    );
  }
}
