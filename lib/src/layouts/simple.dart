import 'package:flutter/material.dart';

class SimpleLayout extends StatefulWidget {
  final Widget child;

  const SimpleLayout({Key key, @required this.child}) : super(key: key);
  @override
  _SimpleLayoutState createState() => _SimpleLayoutState();
}

class _SimpleLayoutState extends State<SimpleLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: SingleChildScrollView(child: widget.child)),
    );
  }
}
