import 'package:basicweb/routes/routes_name.dart';
import 'package:basicweb/widgets/navigation_drawer/navigation_drawer_header.dart';
import 'package:basicweb/widgets/navigation_drawer/navigation_drawer_item.dart';
import 'package:flutter/material.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 16)
        ]
      ),
      child: Column(
        children: <Widget>[
          NavigationDrawerHeader(),
          NavigationDrawerItem(title: 'Home', icon: Icons.home, navigationPath: HomeRoute),
          NavigationDrawerItem(title: 'About', icon: Icons.help, navigationPath: AboutRoute),
          NavigationDrawerItem(title: 'Service', icon: Icons.work, navigationPath: ServiceRoute),
        ],
      ),
    );
  }
}