import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:jet_landing_page_example/src/example_link_item.dart';

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
            AppLocalizations.of(context).connect,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),
        ExampleLinkItem(
          onTap: () {},
          label: AppLocalizations.of(context).link1,
        ),
        ExampleLinkItem(
          onTap: () {},
          label: AppLocalizations.of(context).link2,
        ),
        ExampleLinkItem(
          onTap: () {},
          label: AppLocalizations.of(context).link3,
        ),
      ],
    );
  }
}
