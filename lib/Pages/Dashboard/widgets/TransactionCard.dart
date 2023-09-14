// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../../Constant/ScreenSpace.dart';
import '../../../Models/TransactionModel/TransactionModel.dart';

class TransactionCard extends StatelessWidget {
  const TransactionCard({
    super.key,
    required this.theme,
    required this.notifyData,
  });

  final ThemeData theme;
  final Transaction notifyData;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: ScreenSpace.width(context),
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 0),
      decoration: BoxDecoration(
          border: Border(
              bottom:
                  BorderSide(color: theme.highlightColor.withOpacity(0.1)))),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(10),
                width: ScreenSpace.width(context) * 0.1,
                height: ScreenSpace.width(context) * 0.1,
                child: Image.asset(notifyData.icon),
                decoration: BoxDecoration(
                    color: theme.highlightColor,
                    borderRadius: BorderRadius.circular(8)),
              ),
              Container(
                width: ScreenSpace.width(context) * 0.745,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: ScreenSpace.width(context) * 0.3,
                          child: Text(
                            notifyData.title,
                            style: theme.textTheme.bodyLarge?.copyWith(
                                color: theme.highlightColor,
                                fontWeight: FontWeight.bold),
                          ),
                          // color: Colors.red,
                        ),
                        Container(
                          alignment: Alignment.centerRight,

                          width: ScreenSpace.width(context) * 0.3,
                          child: Text(
                            notifyData.value,
                            style: theme.textTheme.bodyLarge?.copyWith(
                                color: theme.highlightColor,
                                fontWeight: FontWeight.bold),
                          ),
                          // color: Colors.blue,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: ScreenSpace.bodyheight(context) * 0.008,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: ScreenSpace.width(context) * 0.3,
                          child: Text(notifyData.date,
                              style: theme.textTheme.bodySmall),
                          // color: Colors.red,
                        ),
                        Container(
                          alignment: Alignment.centerRight,
                          width: ScreenSpace.width(context) * 0.3,
                          child: Text(notifyData.percent,
                              style: theme.textTheme.bodySmall),
                          // color: Colors.blue,
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
