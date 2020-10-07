import 'dart:math';
import 'package:flutter/material.dart';
import 'package:shop/config/my_colors.dart';
import 'package:shop/config/size_config.dart';

class ShopItem extends StatelessWidget {
  final String text;

  const ShopItem({Key key, @required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.blockSizeHorizontal * 80,
      height: SizeConfig.blockSizeHorizontal * 40,
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(SizeConfig.blockSizeHorizontal * 5),
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  child: Image.asset(
                    'lib/assets/store.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              SizedBox(width: SizeConfig.blockSizeHorizontal * 3),
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                        child: Text(text,
                            style: TextStyle(
                                color: MyColors.secondary,
                                fontWeight: FontWeight.bold,
                                fontSize: SizeConfig.blockSizeHorizontal * 5))),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('Delivery',
                              style: TextStyle(
                                  fontSize: SizeConfig.blockSizeHorizontal * 3,
                                  fontWeight: FontWeight.bold)),
                          Text('Upon delivery',
                              style: TextStyle(
                                  fontSize: SizeConfig.blockSizeHorizontal * 3,
                                  fontWeight: FontWeight.bold)),
                        ]),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:
                            List.generate(Random().nextInt(5), (index) => null)
                                .map((e) => Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                    ))
                                .toList())
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
