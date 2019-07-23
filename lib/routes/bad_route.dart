import 'package:flutter_web/material.dart';
import 'package:eclipsed/responsive.dart';
import 'package:eclipsed/layouts/large_layout.dart';
import 'package:eclipsed/routes/main_route.dart';

class BadRoute extends StatelessWidget {
  final String routeName;

  BadRoute({this.routeName});

  @override
  Widget build(BuildContext context) {
    return Responsive(
      large: LargeLayout(
        child: Column(
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.popUntil(
                    context, ModalRoute.withName(MainRoute.routeName));
              },
            ),
            Center(
              child: Text('404 Not Found - ${routeName}'),
            ),
          ],
        ),
      ),
    );
  }
}