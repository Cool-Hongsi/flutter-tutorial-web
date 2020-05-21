import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:basicweb/views/about/about_view_desktop.dart';
import 'package:basicweb/views/about/about_view_tablet_mobile.dart';

class AboutView extends StatelessWidget {
  const AboutView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: AboutViewTabletMobile(),
      desktop: AboutViewDesktop(),
    );
  }
}