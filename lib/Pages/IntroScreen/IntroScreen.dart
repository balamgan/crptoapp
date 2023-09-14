// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:cryptoapp/Controller/IntroController.dart';
import 'package:cryptoapp/Widgets/CustomBtn.dart';
import 'package:cryptoapp/Widgets/CustomFadeTransition.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../constant/ScreenSpace.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {});
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: Container(
        width: ScreenSpace.width(context),
        height: ScreenSpace.fullHeight(context),
        padding: EdgeInsets.only(bottom: 10, left: 20, right: 20),
        decoration: BoxDecoration(color: theme.highlightColor),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomFadeTransition(
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.bottomCenter,
                    width: ScreenSpace.width(context),
                    height: ScreenSpace.fullHeight(context) * 0.35,
                    // margin: EdgeInsets.symmetric(
                    //   vertical:ScreenSpace.fullHeight(context) *0.01
                    // ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          width: ScreenSpace.width(context) * 0.2,
                          height: ScreenSpace.fullHeight(context) * 0.25,
                          child: Image.asset("assets/aster.png"),
                        ),
                        Container(
                          width: ScreenSpace.width(context) * 0.3,
                          height: ScreenSpace.fullHeight(context) * 0.25,
                          child: Image.asset("assets/Rectangle.png"),
                        ),
                        Container(
                          alignment: Alignment.bottomRight,
                          width: ScreenSpace.width(context) * 0.2,
                          height: ScreenSpace.fullHeight(context) * 0.25,
                          child: Image.asset("assets/Ellipse 1.png"),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.bottomCenter,
                    width: ScreenSpace.width(context),
                    height: ScreenSpace.fullHeight(context) * 0.25,
                    // margin: EdgeInsets.symmetric(
                    //   vertical:ScreenSpace.fullHeight(context) *0.01
                    // ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          width: ScreenSpace.width(context) * 0.15,
                          height: ScreenSpace.fullHeight(context) * 0.25,
                          child: Image.asset("assets/star1.png"),
                        ),
                        Container(
                          width: ScreenSpace.width(context) * 0.4,
                          height: ScreenSpace.fullHeight(context) * 0.25,
                          child: Image.asset("assets/XMLID.png"),
                        ),
                        Container(
                          alignment: Alignment.bottomRight,
                          width: ScreenSpace.width(context) * 0.15,
                          height: ScreenSpace.fullHeight(context) * 0.25,
                          child: Image.asset("assets/star2.png"),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            CustomFadeTransition(child: FooterWidgetsplash(theme: theme)),
            Column(
              children: [
                CustomBtn(
                  label: 'Exchange',
                  labelColor: theme.highlightColor,
                  isclicked: false,
                  height: ScreenSpace.fullHeight(context)*0.07,
                  color: theme.primaryColorLight,
                  textStyle: theme.textTheme.bodyLarge
                      ?.copyWith(color: theme.highlightColor),
                  onTap: () {
                    context.read<Introcontroller>().gotoDashboard();
                  },
                ),
                 SizedBox(
            height: ScreenSpace.fullHeight(context) * 0.03,
          ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class FooterWidgetsplash extends StatelessWidget {
  const FooterWidgetsplash({
    super.key,
    required this.theme,
  });

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenSpace.width(context),
      //  height: ScreenSpace.padingHeight(context),
      child: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            child: Text("Earn Money \nTrade Crypto \nSpend Cash",
                style: theme.textTheme.headlineLarge
                    ?.copyWith(color: theme.primaryColor)),
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: Text("Anywhere.",
                style: theme.textTheme.headlineLarge
                    ?.copyWith(color: theme.primaryColorLight)),
          ),
          SizedBox(
            height: ScreenSpace.fullHeight(context) * 0.035,
          ),
        ],
      ),
    );
  }
}
