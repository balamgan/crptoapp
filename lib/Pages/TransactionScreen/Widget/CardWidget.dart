// ignore_for_file: prefer_interpolation_to_compose_strings, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../Constant/ScreenSpace.dart';
import '../../../Controller/DashboardController.dart';

class Cardwidget extends StatelessWidget {
  const Cardwidget({super.key, this.color});

  final Color? color;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      decoration: BoxDecoration(
        color: color ?? theme.primaryColorLight,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          child: Row(
            children: [
              Container(
                child: Text(
                  "Your Balance",
                  style: theme.textTheme.titleMedium?.copyWith(
                    color: theme.highlightColor,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: ScreenSpace.bodyheight(context) * 0.02,
        ),
        Container(
          child: Text(
            "\$" +
                context.read<DashboardController>().splitValues(context
                    .read<DashboardController>()
                    .balance!
                    .balance
                    .toStringAsFixed(0)),
            style: theme.textTheme.headlineMedium?.copyWith(
                color: theme.highlightColor, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: ScreenSpace.bodyheight(context) * 0.02,
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  width: ScreenSpace.width(context) * 0.25,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: theme.secondaryHeaderColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    children: [
                      Container(
                        child: Image.asset('assets/Ellipse 6.png'),
                      ),
                      SizedBox(
                        width: ScreenSpace.width(context) * 0.01,
                      ),
                      Container(
                        child: Text("BEP-20"),
                      ),
                      SizedBox(
                        width: ScreenSpace.width(context) * 0.01,
                      ),
                      Container(child: Image.asset('assets/arrow down.png')),
                    ],
                  )),
            ],
          ),
        ),
      ]),
    );
  }
}
