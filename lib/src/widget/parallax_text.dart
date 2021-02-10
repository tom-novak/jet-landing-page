import 'package:flutter/material.dart';

class ParallaxText extends StatelessWidget {

  final String text;

  ParallaxText(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(32),
      child: Text(
        text,
        style: Theme.of(context).textTheme.headline4,
        textAlign: TextAlign.center,
      ),
    );
  }
}