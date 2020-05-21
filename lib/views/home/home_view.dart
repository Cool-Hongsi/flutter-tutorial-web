import 'package:basicweb/views/home/home_view_desktop.dart';
import 'package:basicweb/views/home/home_view_tablet_mobile.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

/*
  Grid -> ScreenTypeLayout() (Need to create more views)
  Size -> ResponsiveBuilder() (Not need to create more views)

  ListView - children - Column - children - Row ...
*/

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: HomeViewTabletMobile(),
      desktop: HomeViewDeskTop(),
    );
  }
}