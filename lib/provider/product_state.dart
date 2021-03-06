import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductState with ChangeNotifier {
  int _quantity = 0;

  int get quantity => _quantity;
  set quantity(int newValue) {
    (newValue < 0) ? _quantity = 0 : _quantity = newValue;
    notifyListeners();
  }
}