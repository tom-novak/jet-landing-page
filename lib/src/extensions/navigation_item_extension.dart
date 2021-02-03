import 'package:flutter/material.dart';
import 'package:jet_landing_page/jet_landing_page.dart';

extension NavigationItemExtension on NavigationItem {
  toBottomNavigationBarItem() {
    return BottomNavigationBarItem(icon: this.icon, label: this.label);
  }
}