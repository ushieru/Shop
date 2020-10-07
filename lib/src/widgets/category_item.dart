import 'package:flutter/material.dart';
import 'package:shop/config/size_config.dart';

class CategoryItem extends StatelessWidget {
  final Widget child;
  final String text;

  const CategoryItem({Key key, @required this.text, @required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.blockSizeHorizontal * 39.5,
      height: SizeConfig.blockSizeHorizontal * 39.5,
      child: Card(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              child: child,
            ),
            Text(text, style: TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
