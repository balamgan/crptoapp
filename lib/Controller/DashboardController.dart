// ignore_for_file: prefer_const_constructors

import 'package:cryptoapp/Models/BalanceModel/BalanceModel.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../Models/MenuModel/MenuModels.dart';
import '../Models/TransactionModel/TransactionModel.dart';

class DashboardController extends ChangeNotifier {

// *** HOME SCREEN MENU OPTION DATA  ***

  List<Menus> menuData = [
    Menus(icon: 'assets/Icons.png', name: 'Add Money', color: Color(0xffEADFFF)),
    Menus(icon: 'assets/transfer.png', name: 'Trade', color: Color(0xffFFDEBB)),
    Menus(icon: 'assets/download.png', name: 'widthdraw', color: Color(0xff4186FF),textColor: Colors.white),
  ];

// *** TRANSACTIONS DATA ***

  List<Transaction> tansData =[
    Transaction(date: "Aug 25, 2022", icon: 'assets/pop-out.png', percent: "-0.04%", title: "Matteo", value: "£100"),
    Transaction(date: "Aug 25, 2022", icon: 'assets/Bitcoin.png', percent: "-0.04%", title: "Bitcoin", value: "\$300"),
    Transaction(date: "Aug 25, 2022", icon: 'assets/solana.png', percent: "-0.04%", title: "solana", value: "\$900"),

  ];

  BalanceModel? balance;

// *** LOAD DATA ON INITIAL  ***
  init(){
    loadBalance();
  }

  loadBalance(){
    balance = BalanceModel(
      amount: 670, 
      balance: 3460348, 
      percent: 2
      );
   notifyListeners();   
  }

// *** CURRENCY SPLIT METHOD ***

     String splitValues( String val){
     var formatter = NumberFormat('###,000');
     double formatNO = double.parse(val);
     String retunVal = formatter.format(formatNO).toString();
     return retunVal;
  }
}
