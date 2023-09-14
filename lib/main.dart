
import 'package:cryptoapp/Controller/DashboardController.dart';
import 'package:cryptoapp/Controller/IntroController.dart';
import 'package:cryptoapp/Controller/TransactionController.dart';
import 'package:cryptoapp/Pages/IntroScreen/IntroScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:provider/provider.dart';
import 'Constant/AllRoutes.dart';
import 'Themes/themes_const.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Introcontroller()),
        ChangeNotifierProvider(create: (_) => DashboardController()),
        ChangeNotifierProvider(create: (_) => TransactionController()),
      ],
        child:  GetMaterialApp(
            title: 'Crypto App',
            debugShowCheckedModeBanner: false,
            theme: theme1(context),
            home: const IntroScreen(),
            getPages: Routes.allRoutes,
        )
    );
  }
}
