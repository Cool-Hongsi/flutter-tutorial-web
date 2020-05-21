import 'package:basicweb/routes/routes_name.dart';
import 'package:basicweb/views/about/about_view.dart';
import 'package:basicweb/views/service/service_view.dart';
import 'package:basicweb/views/home/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomeRoute:
      return _getPageRoute(HomeView(), settings);
    case AboutRoute:
      return _getPageRoute(AboutView(), settings);
    case ServiceRoute:
      return _getPageRoute(ServiceView(), settings);
    default:
      return _getPageRoute(HomeView(), settings);
  }
}

PageRoute _getPageRoute(Widget child, RouteSettings settings) {
  // return MaterialPageRoute(builder: (context) => child);
  return _FadeRoute(child: child, routeName: settings.name);
}

class _FadeRoute extends PageRouteBuilder {
  final Widget child;
  final String routeName;
  
  _FadeRoute({ this.child, this.routeName }) : 
  super(
    settings: RouteSettings(name: routeName),
    pageBuilder: (
      BuildContext context,
      Animation<double> animation,
      Animation<double> secondaryAnimation,
    ) => child,
    transitionsBuilder: (
      BuildContext context,
      Animation<double> animation,
      Animation<double> secondaryAnimation,
      Widget child
    ) => FadeTransition(opacity: animation, child: child)
  );
}