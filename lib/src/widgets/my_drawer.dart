import 'package:flutter/material.dart';
import 'package:shop/config/my_colors.dart';
import 'package:shop/config/size_config.dart';
import 'package:shop/src/screens/sign_in.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: MyColors.secondary),
            padding: EdgeInsets.all(SizeConfig.blockSizeHorizontal * 10),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: CircleAvatar(
                    radius: SizeConfig.blockSizeHorizontal * 10,
                    backgroundImage: AssetImage('lib/assets/person.jpg'),
                  ),
                ),
                SizedBox(width: SizeConfig.blockSizeHorizontal * 8),
                Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Welcome back,',
                          style: TextStyle(
                              color: Colors.white70,
                              fontWeight: FontWeight.normal,
                              fontSize: SizeConfig.blockSizeHorizontal * 5)),
                      SizedBox(height: SizeConfig.blockSizeVertical),
                      Text('User Fullname',
                          style: TextStyle(
                              color: Colors.white70,
                              fontSize: SizeConfig.blockSizeHorizontal * 5)),
                      SizedBox(height: SizeConfig.blockSizeVertical * .5),
                      Text('User@email.com',
                          style: TextStyle(
                              fontSize: SizeConfig.blockSizeHorizontal * 3,
                              color: Colors.white60)),
                    ],
                  ),
                ),
              ],
            ),
          ),
          ListTile(
              leading: Icon(
                Icons.account_circle,
                color: MyColors.secondary,
              ),
              title:
                  Text('Perfil', style: TextStyle(color: MyColors.secondary)),
              onTap: () => null),
          ListTile(
              leading: Icon(
                Icons.attach_money,
                color: MyColors.secondary,
              ),
              title:
                  Text('Shopping', style: TextStyle(color: MyColors.secondary)),
              onTap: () => null),
          ListTile(
              leading: Icon(
                Icons.money_off,
                color: MyColors.secondary,
              ),
              title:
                  Text('Expenses', style: TextStyle(color: MyColors.secondary)),
              onTap: () => null),
          ListTile(
              leading: Icon(
                Icons.two_wheeler_outlined,
                color: MyColors.secondary,
              ),
              title:
                  Text('Orders', style: TextStyle(color: MyColors.secondary)),
              onTap: () => null),
          ListTile(
              leading: Icon(
                Icons.inventory,
                color: MyColors.secondary,
              ),
              title: Text('Inventory',
                  style: TextStyle(color: MyColors.secondary)),
              onTap: () => null),
          Divider(),
          ListTile(
              leading: Icon(
                Icons.exit_to_app_outlined,
                color: MyColors.secondary,
              ),
              title:
                  Text('Sign out', style: TextStyle(color: MyColors.secondary)),
              onTap: () => Navigator.pushNamedAndRemoveUntil(
                  context, SingIn.routeName, (route) => false)),
        ],
      ),
    );
  }
}
