import 'package:basicweb/routes/router.dart';
import 'package:basicweb/routes/routes_name.dart';
import 'package:basicweb/services/navigation_service.dart';
import 'package:basicweb/widgets/centered_view/centered_view.dart';
import 'package:basicweb/widgets/navigation_bar/navigation_bar.dart';
import 'package:basicweb/widgets/navigation_drawer/navigation_drawer.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:basicweb/locator.dart';

class LayoutTemplate extends StatelessWidget {
  const LayoutTemplate({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizeInfo) => Scaffold(
        drawer: sizeInfo.deviceScreenType == DeviceScreenType.mobile ? NavigationDrawer() : null,
        backgroundColor: Colors.white,
        body: CenteredView(
          child: Column(
            children: <Widget>[
              NavigationBar(),
              Expanded(
                child: Navigator(
                  key: locator<NavigationService>().navigatorKey,
                  onGenerateRoute: generateRoute,
                  initialRoute: HomeRoute,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}