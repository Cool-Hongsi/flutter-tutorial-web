import 'package:basicweb/locator.dart';
import 'package:basicweb/services/navigation_service.dart';
import 'package:flutter/material.dart';
import 'package:basicweb/extensions/hover_extensions.dart';

class NavBarItem extends StatelessWidget {
  final String title;
  final String navigationPath;
  NavBarItem({ this.title, this.navigationPath });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        locator<NavigationService>().navigateTo(navigationPath);
      },
      child: Text(
        title,
        style: TextStyle(
          fontSize: 18
        ),
      ).showCursorOnHover.moveUpOnHover,
    );
  }
}