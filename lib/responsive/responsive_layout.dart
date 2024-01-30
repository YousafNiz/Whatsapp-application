import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobilelayont;
  final Widget weblayout;
  const ResponsiveLayout(
      {super.key, required this.mobilelayont, required this.weblayout});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 600) {
        return mobilelayont;
      }
      return weblayout;
    });
  }
}
