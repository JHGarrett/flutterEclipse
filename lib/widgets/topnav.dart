import 'package:flutter_web/material.dart';
import 'package:eclipsed/util/util.dart' as util;
import 'package:eclipsed/navigation.dart';
import 'package:eclipsed/routes/main_route.dart';

class TopNav extends StatelessWidget {
  const TopNav({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          InkWell(
            onTap: () {
              Navigator.popUntil(
                  context, ModalRoute.withName(MainRoute.routeName));
              Navigator.pushNamed(context, MainRoute.routeName);
            },
            child: Text(
              'Eclipsed',
              style: util.getCustomTextStyle(
                  context: context,
                  maxSize: 25,
                  minSize: 15,
                  textSizePercentage: .025,
                  letterSpacing: 0,
                  textColor: Colors.white),
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: Navigation.getNavigation(context),
            ),
          )
        ],
      ),
    );
  }
}