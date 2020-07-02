import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'meter_event.dart';

class MeterBloc extends Bloc<MeterEvent, int> {
  @override
  int get initialState => 0;

  @override
  Stream<int> mapEventToState(
    MeterEvent event,
  ) async* {
    if (event is Add) {
      yield state + event.amount;
    } else if (event is Subtract) {
      yield state - event.amount;
    } else {
      yield state;
    }
  }
}
