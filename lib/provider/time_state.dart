import 'package:flutter/widgets.dart';
import 'package:process/process.dart';
import 'dart:async';

class TimeState with ChangeNotifier {
  int _time = 15;

  int get time => _time;
  set time(int newTime) {
    _time = newTime;
    notifyListeners();
  }
}
