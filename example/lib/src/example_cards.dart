import 'package:flutter/material.dart';
import 'package:jet_landing_page/jet_landing_page.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ExampleCards extends StatelessWidget {
  const ExampleCards({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CardContainer(
      children: [
        TextCard(
          icon: Icons.architecture,
          title: AppLocalizations.of(context).loremIpsum,
          text: AppLocalizations.of(context).loremIpsumDolorSitAmet,
        ),
        TextCard(
          icon: Icons.workspaces_outline,
          title: AppLocalizations.of(context).loremIpsum,
          text: AppLocalizations.of(context).loremIpsumDolorSitAmet,
        ),
        TextCard(
          icon: Icons.whatshot_outlined,
          title: AppLocalizations.of(context).loremIpsum,
          text: AppLocalizations.of(context).loremIpsumDolorSitAmetShort,
        ),
      ],
    );
  }
}
