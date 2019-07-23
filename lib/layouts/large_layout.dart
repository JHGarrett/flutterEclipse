import 'package:flutter_web/material.dart';

class LargeLayout extends StatelessWidget {
  const LargeLayout({
    this.child,
    Key key,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: child,
      ),
    );
  }
}