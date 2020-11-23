import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class ParallaxImage extends StatefulWidget {
  static const double parallaxScale = 0.25;

  final ImageProvider image;
  final Widget child;
  final double height;
  final double screenHeight;

  ParallaxImage({
    this.image,
    this.child,
    this.height,
    this.screenHeight = 800,
  });

  @override
  State createState() => _ParallaxImageState();
}

class _ParallaxImageState extends State<ParallaxImage> {
  GlobalKey _containerKey = GlobalKey();
  var position = 0.0;

  void _onPostFrameCallback(Duration duration) {
    final RenderBox renderBox = _containerKey.currentContext.findRenderObject();
    final globalPosition = renderBox.localToGlobal(Offset(0, 0));
    position = globalPosition.dy;
  }

  double _getParallaxShift() {
    return (2 / (widget.screenHeight * ParallaxImage.parallaxScale / position) -
        1) * -1;
  }

  @override
  Widget build(BuildContext context) {
    SchedulerBinding.instance.addPostFrameCallback(_onPostFrameCallback);
    return Container(
      key: _containerKey,
      height: widget.height,
      decoration: BoxDecoration(
          image: DecorationImage(
        image: widget.image,
        fit: BoxFit.fitWidth,
        alignment: Alignment(0.0, _getParallaxShift()),
      )),
      child: widget.child,
    );
  }
}
