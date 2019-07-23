import 'package:flutter_web/material.dart';
import 'package:eclipsed/constants.dart';
import 'package:eclipsed/models/navigation_item.dart';
import 'package:eclipsed/responsive.dart';
import 'package:eclipsed/layouts/large_layout.dart';
import 'package:eclipsed/routes/bad_route.dart';
import 'package:eclipsed/routes/main_route.dart';
import 'package:eclipsed/routes/about_route.dart';
import 'package:eclipsed/util/util.dart' as util;

class Navigation {
  static List<Widget> getNavigation(BuildContext context) {
    List<Widget> navigationItems = [];
    for (NavigationItem n in kNavigationItems)
      navigationItems.add(
        InkWell(
          onTap: () {
            Navigator.popUntil(
                context, ModalRoute.withName(MainRoute.routeName));
            Navigator.pushNamed(
              context,
              n.link,
            );
          },
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 16, 0),
            child: Text(
              n.text,
              style: util.getCustomTextStyle(
                  context: context,
                  maxSize: 18,
                  minSize: 12,
                  textSizePercentage: .02,
                  letterSpacing: 0,
                  textColor: Colors.white),
            ),
          ),
        ),
      );

    return navigationItems;
  }

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case MainRoute.routeName:
        return MaterialPageRoute(
          builder: (_) => Responsive(
                large: LargeLayout(
                  child: MainRoute(),
                ),
              ),
        );
      case AboutRoute.routeName:
        return MaterialPageRoute(
          builder: (_) => AboutRoute(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => BadRoute(routeName: settings.name),
        );
    }
  }
}