// ignore_for_file: prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../Constant/ScreenSpace.dart';
import '../../../Controller/DashboardController.dart';

class SwiperCard extends StatelessWidget {
  const SwiperCard({super.key, this.color});

  final Color? color;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      decoration: BoxDecoration(
        color: color ?? theme.highlightColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween, 
        children: [
        Container(
          child: Row(
            children: [
              Container(
                child: Text(
                  "Your Balance",
                  style: theme.textTheme.titleMedium
                      ?.copyWith(color: Colors.white),
                ),
              ),
              SizedBox(
                width: ScreenSpace.width(context) * 0.01,
              ),
              Container(
                  child: Image.asset(
                'assets/Eye-closed.png',
                color: Colors.white,
              ))
            ],
          ),
        ),
        // SizedBox(
        //   height: ScreenSpace.bodyheight(context) * 0.02,
        // ),
        Container(
          child: Text(
            "\$" +
                context.read<DashboardController>().splitValues(context
                    .read<DashboardController>()
                    .balance!
                    .balance
                    .toStringAsFixed(0)),
            style: theme.textTheme.headlineMedium
                ?.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        // SizedBox(
        //   height: ScreenSpace.bodyheight(context) * 0.02,
        // ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                 // width: ScreenSpace.width(context) * 0.28,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: theme.primaryColorLight,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    children: [
                      Container(
                        child: Image.asset('assets/up-md.png'),
                      ),
                      SizedBox(
                        width: ScreenSpace.width(context) * 0.01,
                      ),
                      Container(
                        child: Text(
                            "\$${context.read<DashboardController>().balance!.amount.toStringAsFixed(0)}"),
                      ),
                      SizedBox(
                        width: ScreenSpace.width(context) * 0.01,
                      ),
                      Container(
                        child: Text("."),
                      ),
                      SizedBox(
                        width: ScreenSpace.width(context) * 0.01,
                      ),
                      Container(
                        child: Text(
                            "${context.read<DashboardController>().balance!.percent}%"),
                      ),
                    ],
                  )),
              Container(
                  child: Image.asset(
                'assets/Group 2.png',
                color: Colors.white,
              ))
            ],
          ),
        ),
      ]),
    );
  }
}
