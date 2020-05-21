import 'package:basicweb/widgets/call_to_action/call_to_action.dart';
import 'package:basicweb/widgets/course_detail/course_detail.dart';
import 'package:flutter/material.dart';

class HomeViewDeskTop extends StatelessWidget {
  const HomeViewDeskTop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row( // ListView -> children -> Column -> children -> Row ...
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        CourseDetail(),
        Expanded( // by row
          child: Center(
            child: CallToAction(title: 'Join courses'),
          ),
        ),
      ],
    );
  }
}
