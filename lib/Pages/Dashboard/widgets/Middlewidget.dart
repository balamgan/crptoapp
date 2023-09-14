import 'package:flutter/material.dart';

import '../../../Constant/ScreenSpace.dart';
import 'BottomWidgets.dart';
import 'Menuwidget.dart';

class MiddleWidget extends StatelessWidget {
  const MiddleWidget({
    super.key,
    required this.theme,
  });

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: ScreenSpace.bodyheight(context)*0.01,),
        MenuWidget(theme: theme),
        SizedBox(height: ScreenSpace.bodyheight(context)*0.01,),
        BottomListViewWidger(theme: theme),
      ],
    );
  }
}