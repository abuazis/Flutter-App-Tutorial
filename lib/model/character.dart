import 'package:equatable/equatable.dart';

class BasePerson {}

class Character extends BasePerson with EquatableMixin {
  String name;
  int age;

  Character({this.name = "no name", this.age = 0});

  @override
  List<Object> get props => [name, age];
}
