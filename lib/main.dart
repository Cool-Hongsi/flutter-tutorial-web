import 'package:basicweb/locator.dart';
import 'package:basicweb/widgets/layout_template/layout_template.dart';
import 'package:flutter/material.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Basic Web',
        theme: ThemeData(       
        primarySwatch: Colors.blue,
        // visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: Theme.of(context).textTheme.apply(
          fontFamily: 'Questrial',
        )
      ),
      home: LayoutTemplate()
    );
  }
}
