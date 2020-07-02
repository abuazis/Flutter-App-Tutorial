// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_app/model/character.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_app/main.dart';

void main() {
  Character c = Character(name: "Dodi", age: 10);
  if(c == Character(name: "Dodi", age: 10)) {
    print("sama");
  } else {
    print("tidak sama");
  }

  List<Character> characters = [c];
  if (characters.contains(Character(name: "Dodi", age: 10))) {
    print("ada");
  } else {
    print("tidak ada");
  }
 }
