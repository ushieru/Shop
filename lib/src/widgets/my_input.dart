import 'package:flutter/material.dart';
import 'package:shop/config/size_config.dart';

// ignore: non_constant_identifier_names
Widget MyInput(
        {@required String label,
        @required TextEditingController controller,
        IconData icon,
        bool isPassword = false}) =>
    Container(
      padding:
          EdgeInsets.symmetric(horizontal: SizeConfig.blockSizeHorizontal * 5),
      child: TextFormField(
        style: TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.bold,
          fontSize: SizeConfig.blockSizeHorizontal * 4,
        ),
        controller: controller,
        obscureText: isPassword,
        decoration: InputDecoration(
          icon: icon != null ? Icon(icon, color: Colors.black87) : null,
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          contentPadding: EdgeInsets.only(
              top: SizeConfig.blockSizeVertical * 1.5,
              bottom: SizeConfig.blockSizeVertical * 1.5),
          isCollapsed: true,
          hintText: label,
          hintStyle: TextStyle(
            color: Colors.black45,
            fontWeight: FontWeight.normal,
            fontSize: SizeConfig.blockSizeHorizontal * 4,
          ),
        ),
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(.3),
                blurRadius: 10,
                spreadRadius: 1,
                offset: Offset(0, 5)),
          ]),
    );
