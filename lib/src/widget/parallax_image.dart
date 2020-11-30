import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class ParallaxImage extends StatefulWidget {
  final ImageProvider image;
  final Widget child;
  final double height;
  final double contentStart;
  final double contentEnd;

  ParallaxImage({
    this.image,
    this.child,
    this.height,
    this.contentStart = 100,
    this.contentEnd = 900,
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
    var progress = ((widget.contentEnd - widget.contentStart) / position);
    return (2 / progress - 1);
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
        fit: BoxFit.none,
        alignment: Alignment(0.0, _getParallaxShift()),
      )),
      child: widget.child,
    );
  }
}
