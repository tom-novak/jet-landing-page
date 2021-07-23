import 'package:flutter/material.dart';
import 'package:jet_landing_page/jet_landing_page.dart';
import 'package:jet_landing_page_example/src/example_cards.dart';
import 'package:jet_landing_page_example/src/example_footer.dart';
import 'package:jet_landing_page_example/src/image_section.dart';
import 'package:jet_landing_page_example/src/one_page_navigation_bar.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:one_page/one_page.dart';

typedef NavigationCallback = Function(NavigationItem item);

enum PageSection {
  home,
  cards,
  about,
}

class LandingPage extends StatefulWidget {
  final List<NavigationItem> mainNavigationItems;
  final NavigationCallback mainNavigationCallback;

  LandingPage({this.mainNavigationItems, this.mainNavigationCallback});

  @override
  State createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  ScrollController _scrollController;
  OnePageController _onePageController;
  var sectionMap = <PageSection, GlobalKey>{};

  @override
  void initState() {
    for (var section in PageSection.values) {
      sectionMap.putIfAbsent(section, () => GlobalKey());
    }
    //WidgetsBinding.instance.addPostFrameCallback(_onPostFrameCallback);
    _scrollController = ScrollController();
    _scrollController.addListener(_onScroll);
    _onePageController = OnePageController(scrollController: _scrollController);
    super.initState();
  }

  void _onScroll() {
    setState(() {});
  }

  List<Widget> get _lanscapeNavigation {
    return [
      TextButton(
        onPressed: () {},
        child: Text(AppLocalizations.of(context).home),
      ),
      TextButton(
        onPressed: () {},
        child: Text(AppLocalizations.of(context).features),
      ),
      TextButton(
        onPressed: () {},
        child: Text(AppLocalizations.of(context).about),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    var isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;
    AppBar appBar = AppBar(
      title: Text(
        'Logo',
        style: Theme.of(context).textTheme.headline2,
      ),
      actions: !isPortrait ? _lanscapeNavigation : null,
    );

    var contentStart =
        appBar.preferredSize.height + MediaQuery.of(context).padding.top;

    var imageSectionHeight = MediaQuery.of(context).orientation == Orientation.portrait
        ? MediaQuery.of(context).size.width
        : MediaQuery.of(context).size.height - contentStart;

    return Scaffold(
      appBar: appBar,
      body: OnePage(
        controller: _onePageController,
        sections: sectionMap.values.toList(),
        child: SingleChildScrollView(
          controller: _scrollController,
          child: Column(
            children: [
              ImageSection(
                key: sectionMap[PageSection.home],
                backgroundAsset: AppLocalizations.of(context).assetBackground1,
                height: imageSectionHeight,
                child: PageCover(
                  title: AppLocalizations.of(context).jetLandingPage,
                  subtitle:
                  AppLocalizations.of(context).simpleFlutterWebLandingPage,
                  actionLabel: AppLocalizations.of(context).makeAction,
                ),
              ),
              ExampleCards(
                key: sectionMap[PageSection.cards],
              ),
              ImageSection(
                backgroundAsset: AppLocalizations.of(context).assetBackground2,
                height: imageSectionHeight,
                child: ParallaxText(
                    AppLocalizations.of(context).loremIpsumParallaxLabel),
              ),
              SimpleParagraph(
                alignment: CrossAxisAlignment.center,
                title: AppLocalizations.of(context).simpleParagraph,
                text: AppLocalizations.of(context).loremIpsumParagraph,
              ),
              ImageSection(
                backgroundAsset: AppLocalizations.of(context).assetBackground3,
                height: imageSectionHeight,
                child: ParallaxText(
                    AppLocalizations.of(context).loremIpsumParallaxLabel),
              ),
              ExampleFooter(sectionMap: sectionMap),
            ],
          ),
        ),
      ),
      bottomNavigationBar: isPortrait
          ? OnePageNavigationBar<PageSection>(
              navigationItems:
                  widget.mainNavigationItems.toBottomNavigationBarItems(),
              sections: sectionMap,
              controller: _onePageController,
            )
          : null,
    );
  }
}
