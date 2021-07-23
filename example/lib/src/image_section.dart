import 'package:flutter/material.dart';

class ImageSection extends StatelessWidget {
  final String backgroundAsset;
  final Widget child;
  final double height;

  const ImageSection({Key key, this.child, this.height, this.backgroundAsset})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Expanded(
            child: Container(
              key: key,
              height: height,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: Image.asset(
                    backgroundAsset,
                  ).image,
                  fit:
                      MediaQuery.of(context).orientation == Orientation.portrait
                          ? BoxFit.fitHeight
                          : BoxFit.fitWidth,
                ),
              ),
              child: child,
            ),
          ),
        ],
      ),
    );
  }
}
