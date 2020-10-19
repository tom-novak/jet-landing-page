import 'package:flutter/cupertino.dart';

enum _ScaffoldSlot {
  content,
  header,
  footer,
}

class Scaffold extends StatefulWidget {
  final PreferredSizeWidget header;
  final Widget content;

  final Color backgroundColor;

  final bool primary;

  Scaffold({this.header, this.content, this.backgroundColor, this.primary = true});

  @override
  State createState() => _ScaffoldState();
}

class _ScaffoldState extends State<Scaffold> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
