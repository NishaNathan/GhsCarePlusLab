import 'package:flutter/material.dart';
import 'package:ghscareplus/responsivelayout/dimensions.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget desktopLayout;
  //final Widget tabletLayout;
  final Widget mobileLayout;

  const ResponsiveLayout(
      {super.key,
      required this.desktopLayout,
      // required this.tabletLayout,
      required this.mobileLayout});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth <= mobilewidth) {
        return mobileLayout;
      } else {
        return desktopLayout;
      }
      /* else if (constraints.maxWidth < tabletwidth) {
        return tabletLayout;
      }  */
    });
  }
}
