import 'package:meta/meta.dart';

@immutable
abstract class CountEvent {}

class Increment extends CountEvent {}
class Decrement extends CountEvent {}