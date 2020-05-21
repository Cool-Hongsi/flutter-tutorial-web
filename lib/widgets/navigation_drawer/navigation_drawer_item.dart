import 'package:basicweb/widgets/navigation_bar/navigation_bar_item.dart';
import 'package:flutter/material.dart';

class NavigationDrawerItem extends StatelessWidget {

  final String title;
  final String navigationPath;
  final IconData icon;

  NavigationDrawerItem({ this.title, this.icon, this.navigationPath });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 30, top: 60),
      child: Row(
        children: <Widget>[
          Icon(icon),
          SizedBox(width: 30),
          NavBarItem(title: title, navigationPath: navigationPath)
        ],
      ),
    );
  }
}