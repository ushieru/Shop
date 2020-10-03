import 'package:flutter/material.dart';
import 'package:shop/src/layouts/home.dart';
import 'package:shop/src/screens/sign_in.dart';
import 'package:shop/src/screens/sign_up.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shop',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        SingIn.routeName: (context) => SingIn(),
        SingUp.routeName: (context) => SingUp(),
        HomeLayout.routeName: (context) => HomeLayout(),
      },
      home: SingIn(),
    );
  }
}
