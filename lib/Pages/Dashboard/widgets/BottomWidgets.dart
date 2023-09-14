// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../Constant/ScreenSpace.dart';
import '../../../Controller/DashboardController.dart';
import 'TransactionCard.dart';

class BottomListViewWidger extends StatelessWidget {
  const BottomListViewWidger({
    super.key,
    required this.theme,
  });

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10
      ),
      child: Column(
        children: [
          Container(
            width: ScreenSpace.width(context),
            child: Text(
              "Transaction",
              style: theme.textTheme.bodyLarge?.copyWith(
                  color: theme.highlightColor, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: ScreenSpace.bodyheight(context) * 0.005,
          ),
          ListView.builder(
            itemCount: context.read<DashboardController>().tansData.length,
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index) {
              final notifyData =
                  context.read<DashboardController>().tansData[index];
    
              return TransactionCard(theme: theme, notifyData: notifyData);
            },
          )
        ],
      ),
    );
  }
}
