import 'package:flutter/material.dart';

class ExampleLinkItem extends StatelessWidget {
  final String label;
  final VoidCallback onTap;

  ExampleLinkItem({
    this.label,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onTap,
        child: Text(
          label,
          style: Theme.of(context).textTheme.bodyText2,
        ));
  }
}
