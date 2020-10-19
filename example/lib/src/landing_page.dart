import 'package:flutter/material.dart';
import 'package:jet_landing_page/jet_landing_page.dart';

class LandingPage extends StatelessWidget {
  List<Widget> _buildCards(BuildContext context) {
    return [
      TextCard(
        icon: Icons.flash_on,
        title: 'Lorem ipsum',
        text:
            'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Praesent dapibus. Duis ante orci, molestie vitae vehicula venenatis, tincidunt ac pede. Integer malesuada.',
      ),
      TextCard(
        icon: Icons.flash_on,
        title: 'Lorem ipsum',
        text:
            'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Praesent dapibus. Duis ante orci, molestie vitae vehicula venenatis, tincidunt ac pede. Integer malesuada.',
      ),
      TextCard(
        icon: Icons.flash_on,
        title: 'Lorem ipsum',
        text:
            'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Praesent dapibus. Duis ante orci, molestie vitae vehicula venenatis, tincidunt ac pede. Integer malesuada.',
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    var horizontal =
        MediaQuery.of(context).size.width > MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Logo',
          style: TextStyle(color: Theme.of(context).primaryColor),
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              'Navbar Link',
              style: TextStyle(color: Theme.of(context).primaryColor),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'Navbar Link',
              style: TextStyle(color: Theme.of(context).primaryColor),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ParallaxContainer(
              Image.asset(
                'assets/background1.jpg',
                fit: BoxFit.fitHeight,
                height: 380,
              ),
              PageCover(
                title: 'Jet Landing Page',
                subtitle: 'Simple Flutter Web Landing Page',
                actionLabel: 'Make Action!',
              ),
            ),
            Container(
                child: horizontal
                    ? CardStripe(
                        children: _buildCards(context),
                      )
                    : CardList(
                        children: _buildCards(context),
                      )),
            ParallaxContainer(
              Image.asset(
                'assets/background2.jpg',
                fit: BoxFit.fitHeight,
                height: 380,
              ),
              ParallaxText(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
            ),
            SimpleParagraph(
              title: 'Simple Paragraph',
              text:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam scelerisque id nunc nec volutpat. Etiam pellentesque tristique arcu, non consequat magna fermentum ac. Cras ut ultricies eros. Maecenas eros justo, ullamcorper a sapien id, viverra ultrices eros. Morbi sem neque, posuere et pretium eget, bibendum sollicitudin lacus. Aliquam eleifend sollicitudin diam, eu mattis nisl maximus sed. Nulla imperdiet semper molestie. Morbi massa odio, condimentum sed ipsum ac, gravida ultrices erat. Nullam eget dignissim mauris, non tristique erat. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;',
            ),
            ParallaxContainer(
              Image.asset(
                'assets/background3.jpg',
                fit: BoxFit.fitHeight,
                height: 380,
              ),
              ParallaxText(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
            ),
            Container(
              color: Theme.of(context).primaryColor,
              child: Row(
                children: [
                  Column(
                    children: [
                      Text('Lorem Ipsum'),
                      Text(
                          'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Pellentesque sapien. Integer vulputate sem a nibh rutrum consequat.'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
