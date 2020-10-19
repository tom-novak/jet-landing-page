import 'package:flutter/cupertino.dart';

class SimpleParagraph extends StatelessWidget {

  static const EdgeInsets defaultPadding = EdgeInsets.all(32);

  final String title;
  final String text;
  final EdgeInsets padding;

  SimpleParagraph({this.title = '', this.text = '', this.padding = defaultPadding});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Column(
        children: [
          title != null ?
            Text(title)
          : SizedBox.shrink(),
          Text(
            text,
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }
}