import 'package:basicweb/routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:basicweb/widgets/navigation_bar/navigation_bar_logo.dart';
import 'package:basicweb/widgets/navigation_bar/navigation_bar_item.dart';

class NavigationBarTabletDesktop extends StatelessWidget {
  const NavigationBarTabletDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          NavigationBarLogo(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              NavBarItem(title: 'Home', navigationPath: HomeRoute),
              SizedBox(
                width: 60,
              ),
              NavBarItem(title: 'About', navigationPath: AboutRoute),
              SizedBox(
                width: 60,
              ),
              NavBarItem(title: 'Service', navigationPath: ServiceRoute),
              SizedBox(
                width: 60,
              ),
              
            ],
          )
        ],
      ),
    );
  }
}