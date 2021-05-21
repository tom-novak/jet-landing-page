import 'package:flutter/material.dart';
import 'package:jet_landing_page/jet_landing_page.dart';
import 'package:jet_landing_page_example/src/app_theme.dart';
import 'package:jet_landing_page_example/src/landing_page.dart';
import 'package:jet_landing_page_example/src/links.dart';

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
          title: 'Info',
          titleStyle: Theme.of(context)
              .copyWith(brightness: Brightness.dark)
              .textTheme
              .headline6,
          text:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam scelerisque id nunc nec volutpat. Etiam pellentesque tristique arcu, non consequat magna fermentum ac. Cras ut ultricies eros. Maecenas eros justo, ullamcorper a sapien id, viverra ultrices eros. Morbi sem neque, posuere et pretium eget, bibendum sollicitudin lacus. Aliquam eleifend sollicitudin diam, eu mattis nisl maximus sed. Nulla imperdiet semper molestie. Morbi massa odio, condimentum sed ipsum ac, gravida ultrices erat.',
          textStyle: Theme.of(context).textTheme.bodyText2,
          padding: EdgeInsets.zero,
        ),
        flatNavigation: SimpleParagraph(
          title: 'Flat navigation',
          titleStyle: Theme.of(context).textTheme.headline6,
          text:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam scelerisque id nunc nec volutpat. Etiam pellentesque tristique arcu, non consequat magna fermentum ac. ',
          textStyle: Theme.of(context).textTheme.bodyText2,
          padding: EdgeInsets.zero,
        ),
        links: Links(),
        copyright: Text(
          '© Jet Landing Page',
          style: Theme.of(context).textTheme.bodyText2,
        ),
      ),
    );
  }
}