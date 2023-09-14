import 'package:flutter/material.dart';

class TransactionController extends ChangeNotifier {
   List<TextEditingController> mycontroller = List.generate(15, (i) => TextEditingController());

// *** LOAD DATA ON INITIAL  ***

   init(){
    mycontroller[0].text = '4325';
    mycontroller[1].text = '0.14';

   }
}
