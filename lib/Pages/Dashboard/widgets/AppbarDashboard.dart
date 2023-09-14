  // ignore_for_file: prefer_const_constructors

  import 'package:flutter/material.dart';
import '../../../Constant/ScreenSpace.dart';

AppBar appBarDashboard(ThemeData theme, BuildContext context) {
    return AppBar(
      backgroundColor: theme.primaryColor,
      automaticallyImplyLeading :false,
      elevation:0,
      title: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 15
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: ScreenSpace.width(context)*0.5,
                child: Text("Hello, Moses",
                style: theme.textTheme.headlineSmall,
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Container(
                      width: ScreenSpace.width(context)*0.1,
                      child: Image.asset("assets/Group 3.png"),
                    ),
                   Container(
                      width: ScreenSpace.width(context)*0.1,
                      child: Image.asset("assets/Group 1.png"),
                    ),
                  ],
                ),
              )
            ],
        ),
      ),
    );
  }