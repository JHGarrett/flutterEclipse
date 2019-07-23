import 'package:flutter_web/material.dart';
import 'package:eclipsed/constants.dart';
import 'package:eclipsed/util/util.dart' as util;
import 'package:eclipsed/widgets/topnav.dart';
import 'package:eclipsed/widgets/stack_background_image.dart';
import 'package:eclipsed/widgets/search_planet.dart';
import 'package:flutter_web/foundation.dart';
import 'package:eclipsed/responsive.dart';

class MainRoute extends StatefulWidget {
  static const String routeName = '/';

  const MainRoute({
    Key key,
  }) : super(key: key);

  @override
  _MainRouteState createState() => _MainRouteState();
}

class _MainRouteState extends State<MainRoute> with TickerProviderStateMixin {
  AnimationController backgroundController;
  Animation bcakgroundAnimation;
  Duration backgroundAnimationDuration = Duration(milliseconds: 1500);

  double top = 0.0;
  double textOpacity1 = 1;
  double textOpacity2 = 1;
  double textOpacity3 = 1;
  double textOpacity4 = 1;
  double textOpacity5 = 0;
  bool textOpacity5Reverse = false;

  @override
  void initState() {
    super.initState();
    backgroundController = AnimationController(
      vsync: this,
      duration: backgroundAnimationDuration,
      upperBound: 1,
      lowerBound: 0,
    );

    bcakgroundAnimation =
        CurvedAnimation(parent: backgroundController, curve: Curves.decelerate);
    backgroundController.forward();
    backgroundController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    backgroundController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double mediaWidth = MediaQuery.of(context).size.width;
    double mediaHeight = MediaQuery.of(context).size.height;

    return AnimatedOpacity(
      child: NotificationListener<ScrollNotification>(
        onNotification: (v) {
          if (v is ScrollUpdateNotification)
            setState(
              () {
                top -= v.scrollDelta / 2;
                textOpacity1 -= v.scrollDelta / 100;
                textOpacity1 < 0 ? textOpacity1 = 0 : textOpacity1;
                textOpacity1 > 1 ? textOpacity1 = 1 : textOpacity1;
                textOpacity2 -= v.scrollDelta / 200;
                textOpacity2 < 0 ? textOpacity2 = 0 : textOpacity2;
                textOpacity2 > 1 ? textOpacity2 = 1 : textOpacity2;
                textOpacity3 -= v.scrollDelta / 300;
                textOpacity3 < 0 ? textOpacity3 = 0 : textOpacity3;
                textOpacity3 > 1 ? textOpacity3 = 1 : textOpacity3;
                textOpacity4 -= v.scrollDelta / 425;
                textOpacity4 < 0 ? textOpacity4 = 0 : textOpacity4;
                textOpacity4 > 1 ? textOpacity4 = 1 : textOpacity4;
                textOpacity5 += v.scrollDelta / 650;
                textOpacity5 < 0 ? textOpacity5 = 0 : textOpacity5;
                textOpacity5 > 1 ? textOpacity5 = 1 : textOpacity5;
              },
            );
        },
        child: Stack(
          children: <Widget>[
            Positioned(
              top: top,
              child: Column(
                children: <Widget>[
                  StackBackgroundImage(
                      opacity: .4, image: kIntroBackgroundImage),
                  StackBackgroundImage(
                      opacity: .5, image: kIntroBackgroundImage2),
                  StackBackgroundImage(
                      opacity: .7, image: kIntroBackgroundImage3),
                ],
              ),
            ),
            Positioned(
              top: 0,
              // removing this outer container causes scrolling not to work
              child: Container(
                width: mediaWidth,
                height: mediaHeight,
                child: ListView(
                  shrinkWrap: true,
                  children: <Widget>[
                    Container(
                      width: mediaWidth,
                      // height needs to be set to a number that allows scrolling
                      // or content needs to be long enough to scroll
                      // if there's enough content, remove this
                      height: 4200,
                      child: Column(
                        children: <Widget>[
                          SizedBox(height: 200),
                          // TODO - Opacity does not perform well, look for alternative
                          Opacity(
                            opacity: textOpacity1,
                            child: Container(
                              //duration: Duration(milliseconds: 500),
                              constraints: BoxConstraints(
                                maxWidth: 200,
                                maxHeight: 50,
                              ),
                              width: mediaWidth * .25,
                              height: mediaWidth * .08,
                              child: FittedBox(
                                fit: BoxFit.contain,
                                child: Text(
                                  'Seeing the world',
                                  /*style: util.getCustomTextStyle(
                                      context: context,
                                      maxSize: 30,
                                      minSize: 16,
                                      textSizePercentage: .03,
                                      letterSpacing: 0,
                                      textColor: Color(0xFFFEF4D1),*/
                                  style: util.getTextStyle(
                                    textColor: Color(0xFFFEF4D1),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 25),
                          Opacity(
                            opacity: textOpacity2,
                            child: Text(
                              'Beyond the Surface',
                              style: util.getCustomTextStyle(
                                  context: context,
                                  maxSize: 55,
                                  minSize: 25,
                                  textSizePercentage: .05,
                                  letterSpacing: 0,
                                  textColor: Color(0xFFFFFFFD)),
                            ),
                          ),
                          SizedBox(height: 25),
                          Opacity(
                            opacity: textOpacity3,
                            child: Text(
                              'Exploring astronomy and the universe around us.',
                              style: util.getCustomTextStyle(
                                  context: context,
                                  maxSize: 30,
                                  minSize: 16,
                                  textSizePercentage: .03,
                                  letterSpacing: 0,
                                  textColor: Color(0xFFFEFFFF)),
                            ),
                          ),
                          SizedBox(height: 60),
                          Opacity(
                            opacity: textOpacity4,
                            child: InkWell(
                              onTap: () => {},
                              child: AnimatedContainer(
                                duration: Duration(milliseconds: 500),
                                constraints: BoxConstraints(
                                  maxWidth: 150,
                                  maxHeight: 65,
                                ),
                                width: mediaWidth * .2,
                                height: mediaWidth * .08,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  border: Border.all(
                                      color: Colors.lightBlue.shade900),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(1.0)),
                                ),
                                child: FittedBox(
                                  fit: BoxFit.contain,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      'Explore',
                                      style: util.getTextStyle(
                                        textColor: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 200),
                          Text(
                            'A World Unknown',
                            style: util.getCustomTextStyle(
                                context: context,
                                maxSize: 45,
                                minSize: 25,
                                textSizePercentage: .04,
                                letterSpacing: 0,
                                textColor: Color(0xFFFEFFFF)),
                          ),
                          SizedBox(height: 20),
                          Container(
                            width: mediaWidth * .75,
                            child: Text(
                              'Eclipsed allows you to explore the galaxy and beyond from anywhere. Check out the top three searches on Eclipsed.',
                              textAlign: TextAlign.center,
                              style: util.getCustomTextStyle(
                                  context: context,
                                  maxSize: 20,
                                  minSize: 15,
                                  textSizePercentage: .02,
                                  letterSpacing: 0,
                                  textColor: Color(0xFFFEFFFF)),
                            ),
                          ),
                          SizedBox(height: 40),
                          Responsive(
                            small: Column(
                              children: <Widget>[
                                SearchPlanet(
                                  image: kSearchImageJupiter,
                                  heading: 'Jupiter',
                                  maxWidth: 300,
                                  maxHeight: 300,
                                ),
                                SizedBox(height: 30),
                                SearchPlanet(
                                  image: kSearchImageVenus,
                                  heading: 'Venus',
                                  maxWidth: 300,
                                  maxHeight: 300,
                                ),
                                SizedBox(height: 30),
                                SearchPlanet(
                                  image: kSearchImageSaturn,
                                  heading: 'Saturn',
                                  maxWidth: 300,
                                  maxHeight: 300,
                                ),
                              ],
                            ),
                            large: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                SearchPlanet(
                                  image: kSearchImageJupiter,
                                  heading: 'Jupiter',
                                  maxWidth: 200,
                                  maxHeight: 300,
                                ),
                                SearchPlanet(
                                  image: kSearchImageVenus,
                                  heading: 'Venus',
                                  maxWidth: 200,
                                  maxHeight: 300,
                                ),
                                SearchPlanet(
                                  image: kSearchImageSaturn,
                                  heading: 'Saturn',
                                  maxWidth: 200,
                                  maxHeight: 300,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // scroll topnav off the screen with a slight delay
              // TopNav needs to be on top of the stack so it is clickable
              top: top <= -100 ? top + 100 : 0,
              //top: top,
              child: Container(
                width: mediaWidth,
                child: TopNav(),
              ),
            ),
          ],
          fit: StackFit.passthrough,
        ),
      ),
      opacity: bcakgroundAnimation.value,
      duration: backgroundAnimationDuration,
    );
  }
}