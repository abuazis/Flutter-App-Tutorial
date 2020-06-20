import 'package:flutter/widgets.dart';

class Money with ChangeNotifier {
  int _balance = 50000;

  int get balance => _balance;

  set balance(int value) {
    _balance = value;
    notifyListeners();
  }
}
