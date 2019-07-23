import 'package:flutter_web/material.dart';
import 'package:eclipsed/layouts/large_layout.dart';
import 'package:eclipsed/responsive.dart';

class AboutRoute extends StatelessWidget {
  static const String routeName = '/about';
  @override
  Widget build(BuildContext context) {
    return Responsive(
      large: LargeLayout(
        child: Column(
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.popUntil(context, ModalRoute.withName('/'));
              },
            ),
            Center(
              child: Text('About!... More to come'),
            ),
          ],
        ),
      ),
    );
  }
}