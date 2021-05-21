import 'package:flutter/material.dart';
import 'package:jet_landing_page/jet_landing_page.dart';
import 'package:jet_landing_page_example/src/example_cards.dart';
import 'package:jet_landing_page_example/src/example_footer.dart';
import 'package:jet_landing_page_example/src/one_page_navigation_bar.dart';

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
          child: Text('Home'),
        ),
        TextButton(
          onPressed: () {},
          child: Text('Features'),
        ),
        TextButton(
          onPressed: () {},
          child: Text('About'),
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
    var contentEnd = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: appBar,
      body: OnePage(
        controller: _onePageController,
        sections: sectionMap.values.toList(),
        child: SingleChildScrollView(
          controller: _scrollController,
          child: Column(
            children: [
              ParallaxImage(
                key: sectionMap[PageSection.home],
                image: Image.asset(
                  'assets/background1.jpg',
                  scale: 3,
                ).image,
                height: 500,
                contentStart: contentStart,
                contentEnd: contentEnd,
                child: PageCover(
                  title: 'Jet Landing Page',
                  subtitle: 'Simple Flutter Web Landing Page',
                  actionLabel: 'Make Action!',
                ),
              ),
              ExampleCards(
                key: sectionMap[PageSection.cards],
              ),
              ParallaxImage(
                image: Image.asset(
                  'assets/background2.jpg',
                  scale: 3,
                ).image,
                height: 500,
                contentStart: contentStart,
                contentEnd: contentEnd,
                child: ParallaxText(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
              ),
              SimpleParagraph(
                alignment: CrossAxisAlignment.center,
                title: 'Simple Paragraph',
                text:
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam scelerisque id nunc nec volutpat. Etiam pellentesque tristique arcu, non consequat magna fermentum ac. Cras ut ultricies eros. Maecenas eros justo, ullamcorper a sapien id, viverra ultrices eros. Morbi sem neque, posuere et pretium eget, bibendum sollicitudin lacus. Aliquam eleifend sollicitudin diam, eu mattis nisl maximus sed. Nulla imperdiet semper molestie. Morbi massa odio, condimentum sed ipsum ac, gravida ultrices erat. Nullam eget dignissim mauris, non tristique erat. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;',
              ),
              ParallaxImage(
                image: Image.asset(
                  'assets/background3.jpg',
                  fit: BoxFit.fitHeight,
                  scale: 3,
                ).image,
                height: 500,
                contentStart: contentStart,
                contentEnd: contentEnd,
                child: ParallaxText(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
              ),
              ExampleFooter(sectionMap: sectionMap),
            ],
          ),
        ),
      ),
      bottomNavigationBar: isPortrait
          ? OnePageNavigationBar(
              navigationItems: widget.mainNavigationItems.toBottomNavigationBarItems(),
              sections: sectionMap,
              controller: _onePageController,
            )
          : null,
    );
  }
}
