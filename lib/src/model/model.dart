import 'package:flutter/widgets.dart';

class Card {
  final String imageUrl;
  final String title;
  final String text;

  Card({this.imageUrl, this.title, this.text});
}

class Link {
  final String text;
  final String url;

  Link({this.text, this.url});
}

typedef NavigationTapCallback = Function();

class NavigationItem {
  final Icon icon;
  final String label;
  final NavigationTapCallback onTap;

  NavigationItem({this.icon, this.label, this.onTap});
}