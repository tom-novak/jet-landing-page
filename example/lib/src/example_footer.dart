import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:jet_landing_page/jet_landing_page.dart';
import 'package:jet_landing_page_example/src/landing_page.dart';
import 'package:jet_landing_page_example/src/links.dart';

class ExampleFooter extends StatelessWidget {
  final double contentWidth;

  const ExampleFooter({
    Key key,
    @required this.sectionMap,
    this.contentWidth,
  }) : super(key: key);

  final Map<PageSection, GlobalKey<State<StatefulWidget>>> sectionMap;

  @override
  Widget build(BuildContext context) {
    var colorScheme = Theme.of(context).colorScheme;
    var textTheme = Theme.of(context).textTheme.apply(
          bodyColor: colorScheme.onPrimary,
        );

    return Theme(
      data: Theme.of(context).copyWith(
        textTheme: textTheme,
      ),
      child: Builder(
        builder: (context) {
          return Container(
            color: Theme.of(context).colorScheme.primary,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: contentWidth,
                  child: Footer(
                    key: sectionMap[PageSection.about],
                    info: SimpleParagraph(
                      title: AppLocalizations.of(context).info,
                      titleStyle: Theme.of(context).textTheme.headlineSmall,
                      text: AppLocalizations.of(context).loremIpsumDolorSitAmetLong,
                      textStyle: Theme.of(context).textTheme.bodySmall,
                      padding: EdgeInsets.zero,
                    ),
                    flatNavigation: SimpleParagraph(
                      title: AppLocalizations.of(context).flatNavigation,
                      titleStyle: Theme.of(context).textTheme.headlineSmall,
                      text: AppLocalizations.of(context).loremIpsumDolorSitAmet,
                      textStyle: Theme.of(context).textTheme.bodySmall,
                      padding: EdgeInsets.zero,
                    ),
                    links: Links(),
                    copyright: Text(
                      AppLocalizations.of(context).jetLandingPageCopyright,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ),
                ),
              ],
            ),
          );
        }
      ),
    );
  }
}
