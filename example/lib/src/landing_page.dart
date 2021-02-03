import 'package:flutter/material.dart';
import 'package:jet_landing_page/jet_landing_page.dart';

var customFooterLinkStyle = TextStyle(color: Colors.white);

typedef NavigationCallback = Function(NavigationItem item);

class LandingPage extends StatefulWidget {
  final List<NavigationItem> mainNavigationItems;
  final NavigationCallback mainNavigationCallback;

  LandingPage({this.mainNavigationItems, this.mainNavigationCallback});

  @override
  State createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  TextStyle footerLinkTheme;
  TextStyle footerHeadlineTheme;

  ScrollController _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController.addListener(_onScroll);
    super.initState();
  }

  void _onScroll() {
    setState(() {});
  }

  List<Widget> _buildCards(BuildContext context) {
    return [
      TextCard(
        icon: Icons.architecture,
        title: 'Lorem ipsum',
        text:
            'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Praesent dapibus. Duis ante orci, molestie vitae vehicula venenatis, tincidunt ac pede. Integer malesuada.',
      ),
      TextCard(
        icon: Icons.workspaces_outline,
        title: 'Lorem ipsum',
        text:
            'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Praesent dapibus. Duis ante orci, molestie vitae vehicula venenatis, tincidunt ac pede. Integer malesuada.',
      ),
      TextCard(
        icon: Icons.whatshot_outlined,
        title: 'Lorem ipsum',
        text:
            'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Praesent dapibus. Duis ante orci, molestie vitae vehicula venenatis.',
      ),
    ];
  }

  Widget _buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      title: Text(
        'Logo',
        style: TextStyle(color: Theme.of(context).primaryColor),
      ),
    );
  }

  Widget _buildDrawerNavigation(BuildContext context) {
    if (MediaQuery.of(context).orientation == Orientation.landscape) {
      return Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Text('Header'),
              decoration: BoxDecoration(color: Colors.green),
            ),
            ListTile(
              title: Text('Link 1'),
            ),
            ListTile(
              title: Text('Link 2'),
            ),
            ListTile(
              title: Text('Link 3'),
            ),
          ],
        ),
      );
    }
    return null;
  }

  List<BottomNavigationBarItem> _getBottomNavigationBarItems(List<NavigationItem> items) {
    var bottomNavigationBarItems = <BottomNavigationBarItem>[];
    for (var item in items) {
      bottomNavigationBarItems.add(item.toBottomNavigationBarItem());
    }
    return bottomNavigationBarItems;
  }

  Widget _buildBottomNavigation(BuildContext context) {
    if (MediaQuery.of(context).orientation == Orientation.portrait) {
      return BottomNavigationBar(
        elevation: 32.0,
        items: _getBottomNavigationBarItems(widget.mainNavigationItems),
        onTap: (index) {},
      );
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    var appTextTheme = Theme.of(context).textTheme;
    footerLinkTheme = appTextTheme.bodyText1.merge(customFooterLinkStyle);
    footerHeadlineTheme = appTextTheme.headline6.copyWith(color: Colors.white);

    AppBar appBar = _buildAppBar(context);

    var contentStart =
        appBar.preferredSize.height + MediaQuery.of(context).padding.top;
    var contentEnd = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: appBar,
      drawer: _buildDrawerNavigation(context),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            ParallaxImage(
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
            CardContainer(_buildCards(context)),
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
            Footer(
              info: SimpleParagraph(
                title: 'Info',
                titleStyle: Theme.of(context)
                    .textTheme
                    .headline6
                    .copyWith(color: Colors.white),
                text:
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam scelerisque id nunc nec volutpat. Etiam pellentesque tristique arcu, non consequat magna fermentum ac. Cras ut ultricies eros. Maecenas eros justo, ullamcorper a sapien id, viverra ultrices eros. Morbi sem neque, posuere et pretium eget, bibendum sollicitudin lacus. Aliquam eleifend sollicitudin diam, eu mattis nisl maximus sed. Nulla imperdiet semper molestie. Morbi massa odio, condimentum sed ipsum ac, gravida ultrices erat.',
                textStyle: Theme.of(context).textTheme.bodyText2.copyWith(
                      color: Colors.white,
                    ),
                padding: EdgeInsets.zero,
              ),
              flatNavigation: SimpleParagraph(
                title: 'Flat navigation',
                titleStyle: Theme.of(context)
                    .textTheme
                    .headline6
                    .copyWith(color: Colors.white),
                text:
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam scelerisque id nunc nec volutpat. Etiam pellentesque tristique arcu, non consequat magna fermentum ac. ',
                textStyle: Theme.of(context).textTheme.bodyText2.copyWith(
                      color: Colors.white,
                    ),
                padding: EdgeInsets.zero,
              ),
              links: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Text(
                      'Connect',
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          .copyWith(color: Colors.white),
                    ),
                  ),
                  TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(padding: EdgeInsets.zero, minimumSize: Size(48, 48)),
                      child: Text(
                        'Link 1',
                        style: footerLinkTheme,
                      )),
                  TextButton(
                      style: TextButton.styleFrom(padding: EdgeInsets.zero, minimumSize: Size(48, 48)),
                      onPressed: () {},
                      child: Text(
                        'Link 2',
                        style: footerLinkTheme,
                      )),
                  TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(padding: EdgeInsets.zero, minimumSize: Size(48, 48)),
                      child: Text(
                        'Link 3',
                        style: footerLinkTheme,
                      )),
                  TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(padding: EdgeInsets.zero, minimumSize: Size(48, 48)),
                      child: Text(
                        'Link 4',
                        style: footerLinkTheme,
                      )),
                  TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(padding: EdgeInsets.zero, minimumSize: Size(48, 48)),
                      child: Text(
                        'Link 5',
                        style: footerLinkTheme,
                      )),
                ],
              ),
              copyright: Text(
                '© Jet Landing Page',
                style: Theme.of(context).textTheme.bodyText2.copyWith(
                      color: Colors.white,
                    ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomNavigation(context),
    );
  }
}
