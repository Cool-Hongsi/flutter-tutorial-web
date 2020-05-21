import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CourseDetail extends StatelessWidget {
  const CourseDetail({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizeInfo) {
      
      var textAlignment = sizeInfo.deviceScreenType == DeviceScreenType.desktop ? TextAlign.left : TextAlign.center;
      double titleSize = sizeInfo.deviceScreenType == DeviceScreenType.mobile ? 50 : 80;
      double descriptionSize = sizeInfo.deviceScreenType == DeviceScreenType.mobile ? 16 : 21;
      
      return Container(
        width: 600,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'FLUTTER\nTUTORIAL WEBSITE',
              textAlign: textAlignment,
              style: TextStyle(
                fontWeight: FontWeight.w800, 
                height: 0.9,
                fontSize: titleSize,
              ),
            ),
            SizedBox(height: 30.0,),
            Text(
              'Lorem ipsum dolor sit amet, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
              textAlign: textAlignment,
              style: TextStyle(
                fontSize: descriptionSize,
                height: 1.7
              ),
            )
          ],
        ),
      );
      }
    );
  }
}