import 'package:flutter/material.dart';
import 'package:shop/config/my_colors.dart';
import 'package:shop/src/screens/all.dart';
import 'package:shop/src/screens/shops.dart';
import 'package:shop/src/widgets/my_drawer.dart';

class HomeLayout extends StatefulWidget {
  static String routeName = 'HomeLayout';
  @override
  _HomeLayoutState createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'LOGO',
            style: TextStyle(color: MyColors.secondary),
          ),
          centerTitle: true,
          iconTheme: IconThemeData(color: MyColors.secondary),
          backgroundColor: Colors.white,
          actions: [
            IconButton(icon: Icon(Icons.shopping_cart), onPressed: () => null)
          ],
          bottom: TabBar(tabs: [
            Tab(text: 'All'),
            Tab(text: 'Shops'),
            Tab(text: 'Markets'),
          ]),
        ),
        drawer: MyDrawer(),
        body: TabBarView(
          children: [
            All(),
            Shop(),
            Text('Markets'),
          ],
        ),
      ),
    );
  }
}
