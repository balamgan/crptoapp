// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../Constant/ScreenSpace.dart';
import '../../../Controller/TransactionController.dart';
import 'TextWidgets.dart';

class MiddleWidgets extends StatelessWidget {
  const MiddleWidgets({
    super.key,
    required this.theme,
  });

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          child: Row(
            children: [
              Container(
                  child: Text("Ever ETH",
                      style: theme.textTheme.titleMedium
                          ?.copyWith(fontWeight: FontWeight.bold))),
              SizedBox(
                width: ScreenSpace.width(context) * 0.01,
              ),
              Text("Swap",
                  style:
                      theme.textTheme.bodyLarge?.copyWith(color: Colors.grey)),
            ],
          ),
        ),
        SizedBox(
          height: ScreenSpace.bodyheight(context) * 0.02,
        ),
        Container(
            child: Text("From:",
                style: theme.textTheme.titleMedium
                    ?.copyWith(fontWeight: FontWeight.bold))),
        SizedBox(
          height: ScreenSpace.bodyheight(context) * 0.006,
        ),
        TextFieldWidget(
          theme: theme,
          controller: context.read<TransactionController>().mycontroller[0],
          currency: 'USDT',
        ),

        Container(
          width: ScreenSpace.width(context),
          height: ScreenSpace.bodyheight(context) * 0.12,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: ScreenSpace.width(context) * 0.68,
                height: ScreenSpace.bodyheight(context) * 0.12,
                padding: EdgeInsets.symmetric(
                  vertical: 5,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        child: Text("I BTC = 25839.80 USD",
                            style: theme.textTheme.bodySmall?.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey))),
                    Container(
                        child: Text("To:",
                            style: theme.textTheme.titleMedium
                                ?.copyWith(fontWeight: FontWeight.bold))),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.centerRight,
                width: ScreenSpace.width(context) * 0.2,
                height: ScreenSpace.bodyheight(context) * 0.12,
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: ScreenSpace.width(context) * 0.05,
                      height: ScreenSpace.bodyheight(context) * 0.02,
                      margin: EdgeInsets.zero,
                      child: Container(
                        width: ScreenSpace.width(context) * 0.02,
                        height: ScreenSpace.bodyheight(context) * 0.02,
                        decoration: BoxDecoration(
                          border: Border(
                            right: BorderSide(
                                color: theme.highlightColor.withOpacity(0.2)),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: ScreenSpace.width(context) * 0.12,
                      height: ScreenSpace.bodyheight(context) * 0.08,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: theme.highlightColor.withOpacity(0.2),
                          )),
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.zero,
                      child: Container(
                        //

                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Color(0xffFF5095)),
                        child: Image.asset("assets/transfer-3787 1.png"),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: ScreenSpace.width(context) * 0.05,
                      height: ScreenSpace.bodyheight(context) * 0.02,
                      margin: EdgeInsets.zero,
                      child: Container(
                        width: ScreenSpace.width(context) * 0.02,
                        height: ScreenSpace.bodyheight(context) * 0.02,
                        decoration: BoxDecoration(
                          border: Border(
                            right: BorderSide(
                                color: theme.highlightColor.withOpacity(0.2)),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        TextFieldWidget(
          theme: theme,
          controller: context.read<TransactionController>().mycontroller[1],
          currency: 'BTC',
        ),
        SizedBox(
          height: ScreenSpace.bodyheight(context) * 0.008,
        ),
        Container(
            child: Text("We use mindmarket rates",
                style: theme.textTheme.bodySmall?.copyWith(
                    fontWeight: FontWeight.bold, color: Colors.grey))),
        SizedBox(
          height: ScreenSpace.bodyheight(context) * 0.05,
        ),

        // ! button
        Container(
          width: ScreenSpace.width(context),
          // height: ScreenSpace.bodyheight(context)*0.08,
          padding: EdgeInsets.only(left: 5, right: 20, top: 5, bottom: 5),
          decoration: BoxDecoration(
              color: Color(0xffEAEBDD),
              borderRadius: BorderRadius.circular(15)),

          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  width: ScreenSpace.width(context) * 0.12,
                  height: ScreenSpace.bodyheight(context) * 0.065,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: theme.secondaryHeaderColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Image.asset(
                      'assets/check-mark-black-outline-svgrepo-com 1.png')),
              Container(
                child: Text(
                  'Exchange',
                  style: theme.textTheme.bodyLarge
                      ?.copyWith(color: theme.highlightColor),
                ),
              ),
              Container(
                child: Image.asset("assets/double-arrow-4847 1.png"),
              )
            ],
          ),
        ),
      ],
    );
  }
}//