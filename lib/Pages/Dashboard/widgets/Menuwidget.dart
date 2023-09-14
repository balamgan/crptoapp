// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../Constant/ScreenSpace.dart';
import '../../../Controller/DashboardController.dart';
import 'MenuCard.dart';

class MenuWidget extends StatelessWidget {
  const MenuWidget({
    super.key,
    required this.theme,
  });

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: ScreenSpace.width(context),
      height: ScreenSpace.bodyheight(context)*0.18,
      child: GridView.builder(
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              crossAxisSpacing: 20,
                              mainAxisSpacing: 8,
                            ),
                            itemCount: context
                                .read<DashboardController>()
                                .menuData
                                .length,
                            shrinkWrap: true,
                            physics: const ScrollPhysics(),
                            padding:
                                EdgeInsets.symmetric(horizontal: 10),
                            primary: false,
                            itemBuilder: (context, index) {
                              final category = context
                                  .read<DashboardController>()
                                .menuData[index];
                              return MenuCard(category: category, theme: theme);
                            }),
    );
  }
}
