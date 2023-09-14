// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_interpolation_to_compose_strings

import 'package:cryptoapp/Pages/Dashboard/widgets/AppbarDashboard.dart';
import 'package:cryptoapp/Widgets/CustomFadeTransition.dart';
import 'package:cryptoapp/Widgets/CustomShakeTranstition.dart';
import 'package:flutter/material.dart';
import '../../../Constant/ScreenSpace.dart';
import '../widgets/Middlewidget.dart';
import '../widgets/SwiperCard.dart';
import '../widgets/SwiperCardHomeWidget.dart';

class HomeWidget extends StatelessWidget {
   HomeWidget({
    super.key,
  });

  
final swiper = [
SwiperCard(),
SwiperCard(color: Color(0xFFFFC9E0),)

];
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: appBarDashboard(theme, context),
      body: Container(
        width: ScreenSpace.width(context),
        height: ScreenSpace.fullHeight(context),
        padding: EdgeInsets.only(top: 20, bottom: 10, left: 20, right: 20),
        child: Column(
          children: [
            CustomFadeTransition(seconds: 1, child: SwiperCardHomeWidget(swiper: swiper)),
            CustomShakeTransition( child: MiddleWidget(theme: theme) ),
          ],
        ),
      ),
    );
  }
}





