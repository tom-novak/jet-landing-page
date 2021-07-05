import 'package:flutter/material.dart';
import 'package:one_page/one_page.dart';

class OnePageNavigationBar<T> extends StatelessWidget {
  final List<BottomNavigationBarItem> navigationItems;
  final Map<T, GlobalKey> sections;
  final OnePageController controller;
  final ValueChanged<T> onTap;

  OnePageNavigationBar({
    this.navigationItems,
    this.sections,
    this.controller,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 32.0,
      items: navigationItems,
      onTap: (index) {
        GlobalKey selectedSectionKey;
        switch (index) {
          case 1:
            selectedSectionKey = sections.values.elementAt(1);
            break;
          case 2:
            selectedSectionKey = sections.values.elementAt(2);
            break;
          default:
            selectedSectionKey = sections.values.elementAt(0);
        }
        controller.animateTo(selectedSectionKey,
            curve: Curves.linear, duration: Duration(milliseconds: 400));
      },
    );
  }
}
