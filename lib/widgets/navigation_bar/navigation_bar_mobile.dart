import 'package:basicweb/widgets/navigation_bar/navigation_bar_logo.dart';
import 'package:flutter/material.dart';
import 'package:basicweb/extensions/hover_extensions.dart';

class NavigationBarMobile extends StatelessWidget {
  const NavigationBarMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ).showCursorOnHover,
          NavigationBarLogo(),
        ],
      )
    );
  }
}