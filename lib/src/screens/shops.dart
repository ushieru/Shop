import 'package:flutter/material.dart';
import 'package:shop/config/my_colors.dart';
import 'package:shop/config/size_config.dart';
import 'package:shop/src/widgets/my_input.dart';
import 'package:shop/src/widgets/shop_item.dart';

class Shop extends StatefulWidget {
  @override
  _ShopState createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  List<String> shops = [
    'Shop 1',
    'Shop 2',
    'Shop 3',
    'Shop 4',
    'Shop 5',
    'Shop 6',
    'Shop 7',
    'Shop 8',
    'Shop 9',
    'Shop 10',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth,
      height: SizeConfig.safeBlockVertical * 100,
      alignment: Alignment.center,
      color: Colors.white,
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.blockSizeHorizontal * 10,
          vertical: SizeConfig.blockSizeVertical * 2,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(children: [
              Expanded(
                  child: MyInput(
                      label: 'Search', icon: Icons.search, controller: null))
            ]),
            SizedBox(height: SizeConfig.blockSizeVertical * 2),
            Container(
              width: double.maxFinite,
              child: Text(
                'Nearby Shops:',
                style: TextStyle(
                  fontSize: SizeConfig.blockSizeHorizontal * 5,
                  fontWeight: FontWeight.w500,
                  color: MyColors.secondary,
                ),
              ),
            ),
            SizedBox(height: SizeConfig.blockSizeVertical * 2),
            Wrap(
              spacing: SizeConfig.blockSizeHorizontal,
              runSpacing: SizeConfig.blockSizeHorizontal,
              children: shops.map((e) => ShopItem(text: e)).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
