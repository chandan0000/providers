import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePageProvider with ChangeNotifier {
  bool? isEligible;
  String? eligibilityMessage = "";
  void checkEligibility(int age) {
    if (age >= 18) {
      isEligible = true;
      eligibilityMessage = "You are eligible";
      notifyListeners();
    } else {
      isEligible = false;
      eligibilityMessage = "You are not eligible";
      notifyListeners();
    }
  }
}
