import 'package:flutter/material.dart';
//step 1

class Counter with ChangeNotifier {
  int _count = 0;

  int get count => _count;

  void increment() {
    _count++;
    notifyListeners();
  }

  //subtract
  void decrement() {
    _count--;
    notifyListeners();
  }

  //reset
  void reset() {
    _count = 0;
    notifyListeners();
  }
}
