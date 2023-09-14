import 'package:flutter/material.dart';
import '../../../Constant/ScreenSpace.dart';
import '../../../Models/MenuModel/MenuModels.dart';

class MenuCard extends StatelessWidget {
  const MenuCard({
    super.key,
    required this.category,
    required this.theme,
  });

  final Menus category;
  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
      color: category.color,
        borderRadius: BorderRadius.circular(18)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.all(5),
            width: ScreenSpace.width(context) * 0.08,
            child: Image.asset(category.icon),
          ),
          Container(
            child: Text(category.name,
            style: theme.textTheme.bodyLarge?.copyWith(
              color: category.textColor
            ),
            ),
          )
        ],
      ),
    );
  }
}