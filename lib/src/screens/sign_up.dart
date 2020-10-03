import 'package:flutter/material.dart';
import 'package:shop/config/size_config.dart';
import 'package:shop/src/components/my_input.dart';
import 'package:shop/src/layouts/simple.dart';

class SingUp extends StatefulWidget {
  static String routeName = 'SingUp';
  @override
  _SingUpState createState() => _SingUpState();
}

class _SingUpState extends State<SingUp> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SimpleLayout(
      child: Stack(
        children: [
          Container(
            width: SizeConfig.screenWidth,
            height: SizeConfig.safeBlockVertical * 100,
            color: Colors.white,
            padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.blockSizeHorizontal * 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: SizeConfig.blockSizeVertical),
                Text(
                  'Create account',
                  style: TextStyle(
                      fontSize: SizeConfig.blockSizeHorizontal * 10,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: SizeConfig.blockSizeVertical * 10),
                Row(children: [
                  Expanded(
                      child: MyInput(
                          label: 'User',
                          icon: Icons.account_circle,
                          controller: null))
                ]),
                SizedBox(height: SizeConfig.blockSizeVertical * 3),
                Row(children: [
                  Expanded(
                      child: MyInput(
                          label: 'Password',
                          icon: Icons.lock,
                          controller: null,
                          isPassword: true))
                ]),
                SizedBox(height: SizeConfig.blockSizeVertical * 3),
                Row(children: [
                  Expanded(
                      child: MyInput(
                          label: 'Email', icon: Icons.email, controller: null))
                ]),
                SizedBox(height: SizeConfig.blockSizeVertical * 3),
                Row(children: [
                  Expanded(
                      child: MyInput(
                          label: 'Mobile',
                          icon: Icons.phone_android,
                          controller: null))
                ]),
                SizedBox(height: SizeConfig.blockSizeVertical * 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Create',
                      style: TextStyle(
                        fontSize: SizeConfig.blockSizeHorizontal * 8,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: SizeConfig.blockSizeHorizontal * 2),
                    RaisedButton(
                      onPressed: () => null,
                      child: Icon(Icons.arrow_forward, color: Colors.white),
                      color: Colors.orange,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              left: SizeConfig.blockSizeHorizontal * 5,
              top: SizeConfig.blockSizeVertical * 5,
            ),
            alignment: Alignment.topLeft,
            width: SizeConfig.screenWidth,
            height: SizeConfig.safeBlockVertical * 100,
            child: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: Icon(
                Icons.arrow_back_ios,
                size: SizeConfig.blockSizeHorizontal * 8,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
