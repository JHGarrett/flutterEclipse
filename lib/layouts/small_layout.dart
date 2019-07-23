import 'package:flutter_web/material.dart';

class SmallLayout extends StatelessWidget {
  const SmallLayout({
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
        title: Text('Small'),
      ),
      body: child,
    );
  }
}