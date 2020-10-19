import 'package:flutter/cupertino.dart';

class CardStripe extends StatelessWidget {

  final List<Widget> children;

  CardStripe({this.children});

  @override
  Widget build(BuildContext context) {
      var cards = <Widget>[];
      for (var i = 0; i < children.length; i++) {
        cards.add(Flexible(child: children[i]));
      }

      return Padding(
        padding: EdgeInsets.all(16),
        child: Row(
          children: cards,
        ),
      );
  }
}