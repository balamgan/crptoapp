  // ignore_for_file: prefer_const_constructors

  import 'package:flutter/material.dart';
import '../../../Constant/ScreenSpace.dart';

AppBar appBarTrans(ThemeData theme, BuildContext context) {
    return AppBar(
      backgroundColor: theme.primaryColor,
      automaticallyImplyLeading :false,
      elevation:0,
      title: Container(
         padding: EdgeInsets.symmetric(
          horizontal: 10
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
               Container(
                      width: ScreenSpace.width(context)*0.1,
                      child: Image.asset("assets/Icons-4.png"),
                    ),
             
                    Container(
                      width: ScreenSpace.width(context)*0.1,
                      child: Image.asset("assets/Group 3.png"),
                    ),
             ],
        ),
      ),
    );
  }