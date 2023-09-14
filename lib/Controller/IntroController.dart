import 'package:cryptoapp/constant/RoutesNames.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';

class Introcontroller extends ChangeNotifier {

// *** HOME SCREEN NAVIGATION METHOD ***

  gotoDashboard(){
    Get.offAllNamed(RoutesName.dashboard);
  }
}