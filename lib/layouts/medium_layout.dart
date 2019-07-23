import 'package:flutter_web/material.dart';

class MediumLayout extends StatelessWidget {
  const MediumLayout({
    this.child,
    Key key,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blue,
        title: Text('Medium'),
      ),
      body: child,
    );
  }
}