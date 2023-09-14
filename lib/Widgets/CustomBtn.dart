// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../Constant/ScreenSpace.dart';

class CustomBtn extends StatelessWidget {
  final String? label;
  final void Function()? onTap;
  final double height;
  final double width;
  final double labelSize;
  final Color? color;
  final Color labelColor;
  final Widget? child;
   bool? isclicked = false; 
   TextStyle? textStyle;

   CustomBtn({
    Key? key,
   required this.label,
    required this.onTap,
    this.width = double.infinity,
    this.height = 45.0,
    this.labelSize = 14.0,
    this.color,
    this.labelColor = Colors.white,
    this.child,
    this.isclicked,
    this.textStyle
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: (isclicked == true)
            ? null :onTap,
        style:
        // theme.elevatedButtonTheme.style,
        ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0)),
      backgroundColor: color,
      ),
        // ElevatedButton.styleFrom(
        
        child: (isclicked == false)
            ? Text(
                label!,
                maxLines: 1,
                style: 
                textStyle ?? theme.textTheme.bodySmall!.copyWith(
                  color: labelColor,
                  fontSize: labelSize,
                ),
              )
            : SizedBox(
            width: ScreenSpace.width(context)*0.06,
            height:ScreenSpace.bodyheight(context)*0.04,
            child: CircularProgressIndicator(
              color: labelColor,
              strokeWidth: 1,
            )),
      ),
    );
  }
}