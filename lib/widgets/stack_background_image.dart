import 'package:flutter_web/material.dart';

class StackBackgroundImage extends StatelessWidget {
  const StackBackgroundImage(
      {Key key, @required this.opacity, @required this.image})
      : super(key: key);

  final double opacity;
  final String image;

  @override
  Widget build(BuildContext context) {
    double mediaWidth = MediaQuery.of(context).size.width;
    double mediaHeight = MediaQuery.of(context).size.height;

    return Stack(
      children: <Widget>[
        Container(
          width: mediaWidth,
          height: mediaHeight,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(image),
            ),
          ),
        ),
        Container(
          width: mediaWidth,
          // allow the height of the gradient to extend slightly beyond the image
          // prevents the image from peeking out
          height: mediaHeight + 2,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: FractionalOffset.topCenter,
              end: FractionalOffset.bottomCenter,
              colors: [
                Colors.transparent,
                Theme.of(context).scaffoldBackgroundColor,
              ],
              stops: [0, 1],
              tileMode: TileMode.clamp,
            ),
          ),
        ),
        Container(
          width: mediaWidth,
          height: mediaHeight,
          color: Color.fromRGBO(0, 0, 0, opacity),
        ),
        SizedBox(
          height: 200,
        )
      ],
    );
  }
}