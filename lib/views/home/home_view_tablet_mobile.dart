import 'package:basicweb/widgets/call_to_action/call_to_action.dart';
import 'package:basicweb/widgets/course_detail/course_detail.dart';
import 'package:flutter/material.dart';

class HomeViewTabletMobile extends StatelessWidget {
  const HomeViewTabletMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView( // to enable scrollable, change it as ListView
      // mainAxisAlignment: MainAxisAlignment.center,
      // mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        SizedBox(height: 50),
        CourseDetail(),
        SizedBox(height: 80,),
        CallToAction(title: 'Join courses'),
      ],
    );
  }
}