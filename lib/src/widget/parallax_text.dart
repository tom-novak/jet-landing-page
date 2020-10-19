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
        style: TextStyle(
          color: Colors.white,
          fontSize: 24,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}