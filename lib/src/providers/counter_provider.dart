import 'package:flutter/material.dart';

class CounterProvider with ChangeNotifier {
  int _count = 0;

  int get() {
    return _count;
  }

  void increment() {
    _count++;
    notifyListeners();
  }

  void decrement() {
    _count--;
    notifyListeners();
  }

  void doubleIncrement() {
    _count += 2;
    notifyListeners();
  }

  void doubleDecrement() {
    _count -= 2;
    notifyListeners();
  }
}
