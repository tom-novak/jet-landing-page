import 'package:flutter/material.dart';

typedef SectionActiveCallback = void Function(Key activeSectionKey);

class OnePageController extends ValueNotifier<Key> {
  final ScrollController scrollController;
  final sectionPositions = <Key, double>{};

  OnePageController({Key key, @required this.scrollController}) : super(key) {
    scrollController.addListener(_onScroll);
  }

  Future<void> animateTo(Key key, {Duration duration, Curve curve}) {
    if (sectionPositions.containsKey(key)) {
      scrollController.animateTo(sectionPositions[key],
          curve: curve, duration: duration);
    }
  }

  void _onScroll() {
    // TODO implement me!
  }
}

class OnePage extends StatefulWidget {
  final SingleChildScrollView child;
  final List<GlobalKey> sections;
  final OnePageController controller;

  OnePage({this.child, this.sections, OnePageController controller})
      : controller =
            controller ?? OnePageController(scrollController: child.controller);

  @override
  State createState() => _OnePageState();
}

class _OnePageState extends State<OnePage> {
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
    widget.controller.sectionPositions.clear();
    for (var sectionKey in widget.sections) {
      widget.controller.sectionPositions.putIfAbsent(
          sectionKey,
          () => (sectionKey.currentContext.findRenderObject() as RenderBox)
              .localToGlobal(Offset.zero)
              .dy);
    }
  }
}
