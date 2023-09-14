// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../../Constant/ScreenSpace.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    super.key,
    required this.theme,
    required this.currency,
    required this.controller
  });

  final ThemeData theme;
  final String currency;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenSpace.width(context),
      height: ScreenSpace.bodyheight(context)*0.08,
      padding: EdgeInsets.symmetric(
        horizontal: 20
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: theme.highlightColor.withOpacity(0.2))
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: ScreenSpace.width(context)*0.5,
            child: TextFormField(
              controller: controller,//,
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding:EdgeInsets.all(0)
              ),
              style:theme.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold)
            )),

            Container(
            width: ScreenSpace.width(context)*0.27,
            alignment: Alignment.centerRight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  child: Text(currency,
                  style:theme.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold)
                  ),
                ),
                SizedBox(width: ScreenSpace.width(context)*0.01,),
                Container(

                  child: Image.asset("assets/arrow down.png"),
                ),
              ],
            )),
        ],
      ),
    );
  }
}