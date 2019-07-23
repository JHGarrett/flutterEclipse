import 'package:flutter_web/material.dart';
import 'package:eclipsed/constants.dart';
import 'package:eclipsed/responsive.dart';
import 'package:eclipsed/layouts/large_layout.dart';
import 'package:eclipsed/routes/main_route.dart';
import 'package:eclipsed/navigation.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({
    Key key,
  }) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation animation;
  Duration animationDuration = Duration(milliseconds: 500);

  @override
  initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: animationDuration,
      upperBound: 1,
      lowerBound: 0,
    );

    animation = CurvedAnimation(parent: controller, curve: Curves.decelerate);
    controller.forward();
    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: animation.value,
      duration: animationDuration,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          primaryColor: kDarkPrimaryColor != null ? kDarkPrimaryColor : null,
          scaffoldBackgroundColor: Colors.black,
        ),
        onGenerateRoute: Navigation.generateRoute,
        home: Responsive(
          large: LargeLayout(
            child: MainRoute(),
          ),
        ),
        title: kTitle,
      ),
    );
  }
}