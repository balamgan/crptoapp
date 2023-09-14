// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers

import 'package:cryptoapp/Pages/Dashboard/widgets/AppBarTransaction.dart';
import 'package:cryptoapp/Pages/TransactionScreen/Widget/CardWidget.dart';
import 'package:cryptoapp/Widgets/CustomFadeTransition.dart';
import 'package:cryptoapp/Widgets/CustomShakeTranstition.dart';
import 'package:flutter/material.dart';
import '../../../Constant/ScreenSpace.dart';
import '../Widget/MiddleWidget.dart';


class TransactionScreen extends StatelessWidget {
  const TransactionScreen({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: appBarTrans(theme, context),
      body: Container(
        width: ScreenSpace.width(context),
        height: ScreenSpace.fullHeight(context),
        padding: EdgeInsets.only(top: 20, bottom: 10, left: 20, right: 20),
        child: Column(
         
          children: [
           CustomFadeTransition(
            seconds: 1,
            child: Cardwidget()),
           SizedBox(height: ScreenSpace.bodyheight(context)*0.045,),
           CustomShakeTransition(child: MiddleWidgets(theme: theme))
          ],
        ),
      ),
    );
  }
}



