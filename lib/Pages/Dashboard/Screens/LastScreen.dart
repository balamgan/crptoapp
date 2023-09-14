import 'package:flutter/material.dart';

import '../../../Constant/ScreenSpace.dart';


class LastScreen extends StatelessWidget {
  const LastScreen({
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
         Container()
        ],
      ),
    );
  }
}