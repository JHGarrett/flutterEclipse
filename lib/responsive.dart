import 'package:flutter_web/material.dart';

class Responsive extends StatelessWidget {
  final Widget large, medium, small, child;

  const Responsive(
      {Key key, @required this.large, this.medium, this.small, this.child})
      : super(key: key);

  static bool isSmall(BuildContext context) =>
      MediaQuery.of(context).size.width < 800;

  static bool isMedium(BuildContext context) =>
      MediaQuery.of(context).size.width > 800 &&
      MediaQuery.of(context).size.width < 1200;

  static bool isLarge(BuildContext context) =>
      MediaQuery.of(context).size.width > 1200;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200)
          return large;
        else if (constraints.maxWidth < 1200 && constraints.maxWidth > 800)
          return medium ?? large;
        else
          return small ?? large;
      },
    );
  }
}