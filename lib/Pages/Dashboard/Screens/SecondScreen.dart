// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

import '../../../Constant/ScreenSpace.dart';


class SecondScreen extends StatelessWidget {
  const SecondScreen({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenSpace.width(context),
      height: ScreenSpace.fullHeight(context),
      padding: EdgeInsets.only(top: 20, bottom: 10, left: 20, right: 20),
      child: Column(
        children: [
         Center(child: Text("Second Screeen"),)
        ],
      ),
    );
  }
}