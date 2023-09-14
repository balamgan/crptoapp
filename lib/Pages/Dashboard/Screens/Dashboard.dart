// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last

import 'package:cryptoapp/Controller/DashboardController.dart';
import 'package:cryptoapp/Controller/TransactionController.dart';
import 'package:cryptoapp/Pages/Dashboard/Screens/HomeScreen.dart';
import 'package:cryptoapp/Pages/Dashboard/Screens/LastScreen.dart';
import 'package:cryptoapp/Pages/Dashboard/Screens/LoveScreen.dart';
import 'package:cryptoapp/Pages/Dashboard/Screens/SecondScreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../Constant/ScreenSpace.dart';
import '../../TransactionScreen/Screens/TransactionScreen.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key, required this.title});

  final String title;

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int currentIndex = 0;
  final screens = [
    HomeWidget(),
    SecondScreen(),
    TransactionScreen(),
    LoveScreen(),
    LastScreen()
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<DashboardController>().init();
       context.read<TransactionController>().init();
    });
  }
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
        // appBar: appBarTrans(theme, context),
        backgroundColor: theme.primaryColor,
        body:  screens[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          selectedItemColor: theme.highlightColor,
          backgroundColor:Colors.amber,
          // selectedLabelStyle: theme.textTheme.bodyLarge,
          onTap: (value) => setState(() =>currentIndex = value),
          items: [
          BottomNavigationBarItem(
            icon:  Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(10),
                width: ScreenSpace.width(context) * 0.1,
                height: ScreenSpace.width(context) * 0.1,
                child: currentIndex == 0?
                Image.asset('assets/Home_.png'):
                Image.asset('assets/Home_Un.png'),

                decoration: BoxDecoration(
                    color:  currentIndex == 0?
                    theme.primaryColorLight:
                    theme.primaryColor,
                    borderRadius: BorderRadius.circular(8)),
              ),
              label: ".",
              // backgroundColor: Colors.red
              
              ),
              BottomNavigationBarItem(
            icon:  Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(10),
                width: ScreenSpace.width(context) * 0.1,
                height: ScreenSpace.width(context) * 0.1,
                child: Image.asset('assets/Icons-2.png'),
                decoration: BoxDecoration(
                  color: currentIndex == 1?
                    theme.primaryColorLight:
                    theme.primaryColor,
                    borderRadius: BorderRadius.circular(8)),
              ),
              label: "."
              
              ),
                BottomNavigationBarItem(
            icon:  Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(10),
                width: ScreenSpace.width(context) * 0.1,
                height: ScreenSpace.width(context) * 0.1,
                child: currentIndex == 2?
                 Image.asset('assets/transfer-3SL.png'):
                Image.asset('assets/transfer-37.png')
               ,
                decoration: BoxDecoration(
                   color: currentIndex == 2?
                    theme.primaryColorLight:
                    theme.primaryColor,
                    borderRadius: BorderRadius.circular(8)),
              ),
              label: "."
              
              ),  BottomNavigationBarItem(
            icon:  Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(10),
                width: ScreenSpace.width(context) * 0.1,
                height: ScreenSpace.width(context) * 0.1,
                child: Image.asset('assets/love.png'),
                decoration: BoxDecoration(
                   color: currentIndex == 3?
                    theme.primaryColorLight:
                    theme.primaryColor,
                    borderRadius: BorderRadius.circular(8)),
              ),
              label: "."
              
              ),  BottomNavigationBarItem(
            icon:  Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(10),
                width: ScreenSpace.width(context) * 0.1,
                height: ScreenSpace.width(context) * 0.1,
                child: Image.asset('assets/Icons-3.png'),
                decoration: BoxDecoration(
                    color: currentIndex == 4?
                    theme.primaryColorLight:
                    theme.primaryColor,
                    borderRadius: BorderRadius.circular(8)),
              ),
              label: "."
              
              ),
        ]),
        );
  }
}

// class HomeWidget extends StatelessWidget {
//   const HomeWidget({
//     super.key,
//     required this.theme,
//   });

//   final ThemeData theme;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: ScreenSpace.width(context),
//       height: ScreenSpace.fullHeight(context),
//       padding: EdgeInsets.only(top: 20, bottom: 10, left: 20, right: 20),
//       child: Column(
//         children: [
//           Container(
//             width: ScreenSpace.width(context),
//             height: ScreenSpace.bodyheight(context) * 0.3,
//             color: theme.highlightColor,
//           ),
//           MenuWidget(theme: theme),
//           BottomListViewWidger(theme: theme),
//         ],
//       ),
//     );
//   }
// }
