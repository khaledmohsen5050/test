
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class   Languageprovider with ChangeNotifier {
   bool isEn = true;

   changeLan(bool lan) async{
    isEn = lan;
    notifyListeners();
   SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool("isEn", isEn);
  }
  getLan() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    isEn = prefs.getBool("isEn")?? true;
    notifyListeners();
  }

}
