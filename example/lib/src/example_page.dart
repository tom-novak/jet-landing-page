import 'package:flutter/material.dart';
import 'package:jet_landing_page/jet_landing_page.dart';
import 'package:jet_landing_page_example/src/landing_page.dart';

class ExamplePage extends StatefulWidget {
  final mainNavigation = <NavigationItem>[
    NavigationItem(icon: Icon(Icons.account_balance_outlined), label: 'Link 1'),
    NavigationItem(icon: Icon(Icons.access_time_outlined), label: 'Link 2'),
    NavigationItem(icon: Icon(Icons.account_circle_outlined), label: 'Link 3'),
  ];

  @override
  State createState() => ExamplePageState();
}

class ExamplePageState extends State<ExamplePage> {
  Widget content;

  @override
  Widget build(BuildContext context) {
    return LandingPage(
      mainNavigationItems: widget.mainNavigation,
      mainNavigationCallback: onMainNavigationItemChanged,
    );
  }

  void onMainNavigationItemChanged(NavigationItem item) {

  }
}
