import 'package:flutter/material.dart';

class Count with ChangeNotifier {
  int value = 0;

  void add() {
    value++;
    notifyListeners();
  }
}
