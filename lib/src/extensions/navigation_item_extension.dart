import 'package:flutter/material.dart';
import 'package:jet_landing_page/jet_landing_page.dart';

extension NavigationItemExtension on NavigationItem {
  toBottomNavigationBarItem() {
    return BottomNavigationBarItem(icon: this.icon, label: this.label);
  }
}

extension NavigationItemsExtension on List<NavigationItem> {
  List<BottomNavigationBarItem> toBottomNavigationBarItems() {
    var bottomNavigationBarItems = <BottomNavigationBarItem>[];
    for (var item in this) {
      bottomNavigationBarItems.add(item.toBottomNavigationBarItem());
    }
    return bottomNavigationBarItems;
  }
}

