import 'package:flutter_web/material.dart';
import 'package:eclipsed/constants.dart';

TextStyle getCustomTextStyle(
    {BuildContext context,
    int maxSize,
    int minSize,
    double textSizePercentage,
    double letterSpacing,
    Color textColor}) {
  double fontSize = MediaQuery.of(context).size.width * textSizePercentage;
  if (fontSize > maxSize) {
    fontSize = maxSize.toDouble();
  } else if (fontSize < minSize) {
    fontSize = minSize.toDouble();
  }

  return TextStyle(
    fontSize: fontSize,
    //fontSize: MediaQuery.of(context).size.width * textSizePercentage,
    fontFamily: kFontFamily,
    color: textColor,
    letterSpacing: letterSpacing,
  );
}

TextStyle getTextStyle(
    { //@required double letterSpacing,
    @required Color textColor}) {
  return TextStyle(
    fontFamily: kFontFamily,
    color: textColor,
    // TODO
    // letterspacing causes a formatting issue for
    // custom fonts displayed in a fittedbox, commenting out
    //letterSpacing: letterSpacing,
  );
}