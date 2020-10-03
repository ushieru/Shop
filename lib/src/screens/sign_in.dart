import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:shop/config/my_colors.dart';
import 'package:shop/config/size_config.dart';
import 'package:shop/src/layouts/home.dart';
import 'package:shop/src/widgets/my_input.dart';
import 'package:shop/src/layouts/simple.dart';
import 'package:shop/src/screens/sign_up.dart';

class SingIn extends StatefulWidget {
  static String routeName = 'SingIn';
  @override
  _SingInState createState() => _SingInState();
}

class _SingInState extends State<SingIn> {
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
                Text('Hello',
                    style: TextStyle(
                        fontSize: SizeConfig.blockSizeHorizontal * 25)),
                SizedBox(height: SizeConfig.blockSizeVertical),
                Text('Sign In to your account',
                    style: TextStyle(
                        fontSize: SizeConfig.blockSizeHorizontal * 5)),
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
                SizedBox(height: SizeConfig.blockSizeVertical * 2),
                Container(
                  margin: EdgeInsets.only(
                      right: SizeConfig.blockSizeHorizontal * 4),
                  alignment: Alignment.centerRight,
                  child: Text('Forgot your password?',
                      style: TextStyle(color: Colors.black45)),
                ),
                SizedBox(height: SizeConfig.blockSizeVertical * 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Sign in',
                      style: TextStyle(
                        fontSize: SizeConfig.blockSizeHorizontal * 8,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: SizeConfig.blockSizeHorizontal * 2),
                    RaisedButton(
                      onPressed: () => Navigator.pushNamedAndRemoveUntil(
                          context, HomeLayout.routeName, (route) => false),
                      child: Icon(Icons.arrow_forward, color: Colors.white),
                      color: MyColors.primary,
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
            padding: EdgeInsets.only(bottom: SizeConfig.blockSizeVertical * 3),
            alignment: Alignment.bottomCenter,
            width: SizeConfig.screenWidth,
            height: SizeConfig.safeBlockVertical * 100,
            child: RichText(
              text: TextSpan(
                text: 'Don\'t have an account?  ',
                style: TextStyle(color: Colors.black87),
                children: <TextSpan>[
                  TextSpan(
                      recognizer: TapGestureRecognizer()
                        ..onTap = () =>
                            Navigator.pushNamed(context, SingUp.routeName),
                      text: 'Create',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                          decoration: TextDecoration.underline))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
