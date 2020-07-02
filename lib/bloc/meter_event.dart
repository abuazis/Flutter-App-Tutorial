part of 'meter_bloc.dart';

@immutable
abstract class MeterEvent {
  final int amount;

  MeterEvent(this.amount);
}

class Add extends MeterEvent {
  Add(int amount) : super(amount);
}

class Subtract extends MeterEvent {
  Subtract(int amount) : super(amount);
}

class DoingNothing extends MeterEvent {
  DoingNothing() : super(null);
}
