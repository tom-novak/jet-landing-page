import 'package:flutter/material.dart';

typedef SectionActiveCallback = void Function(Key activeSectionKey);

class OnePageController extends ValueNotifier<Key> {

  OnePageController(Key key): super(key);

  Future<void> animateTo() {

  }
}

class OnePage extends StatefulWidget {
  final SingleChildScrollView child;
  final List<Key> sections;
  final OnePageController controller;

  OnePage({this.child, this.sections, OnePageController controller})
      : controller = controller ?? OnePageController();

  @override
  State createState() => _OnePageState();
}

class _OnePageState extends State<OnePage> {
  final sectionPositions = <Key, double>{};

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback(_onPostFrameCallback);
    widget.child.controller.addListener(_onScrollChange);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }

  void _onScrollChange() {
    // TODO return active section key to callback
  }

  void _onPostFrameCallback(Duration duration) {
    // positionHome = (keyHome.currentContext.findRenderObject() as RenderBox)
    //     .localToGlobal(Offset.zero)
    //     .dy;
    // positionCards = (keyCards.currentContext.findRenderObject() as RenderBox)
    //     .localToGlobal(Offset.zero)
    //     .dy;
    // positionAbout = (keyAbout.currentContext.findRenderObject() as RenderBox)
    //     .localToGlobal(Offset.zero)
    //     .dy;
  }
}
