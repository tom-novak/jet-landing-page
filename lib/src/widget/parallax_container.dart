import 'package:flutter/material.dart';

class ParallaxContainer extends StatelessWidget {

  final Image backgroundImage;
  final Widget content;

  ParallaxContainer(this.backgroundImage, this.content);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          backgroundImage,
          content
        ],
      ),
    );
  }
}