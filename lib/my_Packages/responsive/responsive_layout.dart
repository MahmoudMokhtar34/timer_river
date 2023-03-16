import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileBodyPortrait;
  final Widget tabletBodyPortrait;
  final Widget? mobileBodyLandscape;
  final Widget? tabletBodyLandscape;
  final Widget desktopBody;

  const ResponsiveLayout({
    super.key,
    required this.mobileBodyPortrait,
    required this.tabletBodyPortrait,
    this.mobileBodyLandscape,
    this.tabletBodyLandscape,
    required this.desktopBody,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 500) {
          //return mobileBodyPortrait;
          return OrientationBuilder(
            builder: (BuildContext context, Orientation orientation) {
              return orientation == Orientation.landscape
                  ? mobileBodyLandscape ?? mobileBodyPortrait
                  : mobileBodyPortrait;
            },
          );
        } else if (constraints.maxWidth < 1100) {
          //return tabletBodyPortrait;
          return OrientationBuilder(
            builder: (BuildContext context, Orientation orientation) {
              return orientation == Orientation.landscape
                  ? tabletBodyLandscape ?? tabletBodyPortrait
                  : tabletBodyPortrait;
            },
          );
        } else {
          return desktopBody;
        }
      },
    );
  }
}

