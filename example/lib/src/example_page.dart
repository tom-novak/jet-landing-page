import 'package:flutter/material.dart';
import 'package:jet_landing_page/jet_landing_page.dart';
import 'package:jet_landing_page_example/src/landing_page.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ExamplePage extends StatelessWidget {
  const ExamplePage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return LandingPage(
      mainNavigationItems: [
        NavigationItem(
            icon: Icon(Icons.account_balance_outlined),
            label: AppLocalizations.of(context).home),
        NavigationItem(
            icon: Icon(Icons.access_time_outlined),
            label: AppLocalizations.of(context).features),
        NavigationItem(
            icon: Icon(Icons.account_circle_outlined),
            label: AppLocalizations.of(context).about),
      ],
      mainNavigationCallback: onMainNavigationItemChanged,
    );
  }

  void onMainNavigationItemChanged(NavigationItem item) {}
}
