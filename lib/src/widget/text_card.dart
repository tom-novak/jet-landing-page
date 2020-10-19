import 'package:flutter/material.dart';

class TextCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String text;

  TextCard({this.icon, this.title, this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 64,
        ),
        title != null
            ? Padding(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: Text(
                  title,
                  style: Theme.of(context).textTheme.headline5,
                ))
            : SizedBox.shrink(),
        text != null
            ? Text(
                text,
                textAlign: TextAlign.justify,
              )
            : SizedBox.shrink(),
      ],
    );
  }
}
