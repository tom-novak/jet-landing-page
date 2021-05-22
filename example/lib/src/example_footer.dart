import 'package:flutter/material.dart';
import 'package:jet_landing_page/jet_landing_page.dart';
import 'package:jet_landing_page_example/src/app_theme.dart';
import 'package:jet_landing_page_example/src/landing_page.dart';
import 'package:jet_landing_page_example/src/links.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ExampleFooter extends StatelessWidget {
  const ExampleFooter({
    Key key,
    @required this.sectionMap,
  }) : super(key: key);

  final Map<PageSection, GlobalKey<State<StatefulWidget>>> sectionMap;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        textButtonTheme: footerLinkTheme,
      ),
      child: Footer(
        key: sectionMap[PageSection.about],
        info: SimpleParagraph(
          title: AppLocalizations.of(context).info,
          titleStyle: Theme.of(context)
              .copyWith(brightness: Brightness.dark)
              .textTheme
              .headline6,
          text: AppLocalizations.of(context).loremIpsumDolorSitAmetLong,
          textStyle: Theme.of(context).textTheme.bodyText2,
          padding: EdgeInsets.zero,
        ),
        flatNavigation: SimpleParagraph(
          title: AppLocalizations.of(context).flatNavigation,
          titleStyle: Theme.of(context).textTheme.headline6,
          text: AppLocalizations.of(context).loremIpsumDolorSitAmet,
          textStyle: Theme.of(context).textTheme.bodyText2,
          padding: EdgeInsets.zero,
        ),
        links: Links(),
        copyright: Text(
          AppLocalizations.of(context).jetLandingPageCopyright,
          style: Theme.of(context).textTheme.bodyText2,
        ),
      ),
    );
  }
}
