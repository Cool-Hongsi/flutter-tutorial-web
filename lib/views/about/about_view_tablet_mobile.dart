import 'package:flutter/material.dart';

class AboutViewTabletMobile extends StatelessWidget {
  const AboutViewTabletMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            // image
            SizedBox(
              height: 300,
              width: 600,
              child: Image.network('https://cdn.pixabay.com/photo/2016/10/22/17/46/scotland-1761292_1280.jpg')
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 30, 20, 30),
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
                style: TextStyle(
                  fontSize: 16,
                  height: 1.6
                ),
              ),
            ),
            SizedBox(
              height: 300,
              width: 600,
              child: Image.network('https://cdn.pixabay.com/photo/2015/07/27/20/16/book-863418_1280.jpg'),
            ),
            Text(
              'Image 1',
              style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 40
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                height: 1.6
              ),
            ),
            SizedBox(
              height: 300,
              width: 600,
              child: Image.network('https://cdn.pixabay.com/photo/2018/02/02/17/29/nature-3125912_1280.jpg'),
            ),
            Text(
              'Image 2',
              style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 40
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                height: 1.6
              ),
            ),
          ],
        )
      ],
    );
  }
}