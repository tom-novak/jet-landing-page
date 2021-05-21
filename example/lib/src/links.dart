import 'package:flutter/material.dart';

class Links extends StatelessWidget {
  const Links({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: Text(
            'Connect',
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        TextButton(
            onPressed: () {},
            child: Text(
              'Link 1',
              style: Theme.of(context).textTheme.bodyText2,
            )),
        TextButton(
            onPressed: () {},
            child: Text(
              'Link 2',
              style: Theme.of(context).textTheme.bodyText2,
            )),
        TextButton(
            onPressed: () {},
            child: Text(
              'Link 3',
              style: Theme.of(context).textTheme.bodyText2,
            )),
      ],
    );
  }
}