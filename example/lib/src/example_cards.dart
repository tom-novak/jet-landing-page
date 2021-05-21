import 'package:flutter/material.dart';
import 'package:jet_landing_page/jet_landing_page.dart';

class ExampleCards extends StatelessWidget {

  const ExampleCards({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CardContainer(
      children: [
        TextCard(
          icon: Icons.architecture,
          title: 'Lorem ipsum',
          text:
              'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Praesent dapibus. Duis ante orci, molestie vitae vehicula venenatis, tincidunt ac pede. Integer malesuada.',
        ),
        TextCard(
          icon: Icons.workspaces_outline,
          title: 'Lorem ipsum',
          text:
              'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Praesent dapibus. Duis ante orci, molestie vitae vehicula venenatis, tincidunt ac pede. Integer malesuada.',
        ),
        TextCard(
          icon: Icons.whatshot_outlined,
          title: 'Lorem ipsum',
          text:
              'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Praesent dapibus. Duis ante orci, molestie vitae vehicula venenatis.',
        ),
      ],
    );
  }
}
