// ignore_for_file: prefer_const_constructors

import 'package:get/get.dart';

import '../Pages/Dashboard/Screens/Dashboard.dart';
import '../Pages/IntroScreen/IntroScreen.dart';
import 'RoutesNames.dart';

class Routes {
  static List<GetPage> allRoutes = [
    GetPage<dynamic>(
        name: RoutesName.splash,
        page: () => IntroScreen(),
        transition: Transition.fade,
        transitionDuration: Duration(seconds: 1)),
    GetPage<dynamic>(
        name: RoutesName.dashboard,
        page: () => Dashboard(
              title: 'Dashboard',
            ),
        transition: Transition.fade,
        transitionDuration: Duration(seconds: 1)),
  ];
}
