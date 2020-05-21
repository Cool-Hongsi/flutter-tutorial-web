import 'package:flutter/material.dart';

class NavigationBarLogo extends StatelessWidget {
  const NavigationBarLogo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SizedBox(
        height: 100, 
        width: 150, 
        child: Image.asset('assets/logo.png'),
      ),
    );
  }
}