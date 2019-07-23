import 'package:flutter_web/material.dart';
import 'package:eclipsed/util/util.dart' as util;

class SearchPlanet extends StatelessWidget {
  const SearchPlanet({
    Key key,
    @required this.image,
    @required this.heading,
    @required this.maxWidth,
    @required this.maxHeight,
  }) : super(key: key);

  final String image, heading;
  final double maxWidth, maxHeight;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        AnimatedContainer(
          constraints: BoxConstraints(
              maxHeight: 400,
              minHeight: maxHeight,
              maxWidth: maxWidth,
              minWidth: 120),
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(image),
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          duration: Duration(milliseconds: 500),
        ),
        AnimatedContainer(
          constraints: BoxConstraints(
              maxHeight: 400,
              minHeight: maxHeight,
              maxWidth: maxWidth,
              minWidth: 120),
          decoration: BoxDecoration(
            color: Color.fromRGBO(0, 0, 0, .3),
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          duration: Duration(milliseconds: 500),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text(
                heading,
                style: util.getCustomTextStyle(
                    context: context,
                    maxSize: 20,
                    minSize: 14,
                    textSizePercentage: .03,
                    letterSpacing: 0,
                    textColor: Colors.white),
              ),
              SizedBox(height: 20),
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt',
                textAlign: TextAlign.center,
                style: util.getCustomTextStyle(
                    context: context,
                    maxSize: 12,
                    minSize: 8,
                    textSizePercentage: .02,
                    letterSpacing: 0,
                    textColor: Colors.white),
              ),
              SizedBox(height: 20),
              InkWell(
                onTap: () => {},
                child: Container(
                  constraints: BoxConstraints(
                      maxHeight: 50,
                      minHeight: 40,
                      maxWidth: 110,
                      minWidth: 75),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    border: Border.all(color: Colors.lightBlue.shade900),
                    borderRadius: BorderRadius.all(Radius.circular(1.0)),
                  ),
                  child: Center(
                    child: Text(
                      'Explore',
                      style: util.getCustomTextStyle(
                          context: context,
                          maxSize: 16,
                          minSize: 14,
                          textSizePercentage: .03,
                          letterSpacing: 0,
                          textColor: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ],
    );
  }
}