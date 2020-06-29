import 'dart:async';
import 'package:bloc/bloc.dart';
import './bloc.dart';


class CountBloc extends Bloc<CountEvent, CountState> {
  @override
  CountState get initialState => CountState(0);

  @override
  Stream<CountState> mapEventToState(
    CountEvent event,
  ) async* {
    yield (event is Increment) ? CountState(state.value + 1) : CountState(state.value - 1);
  }
}
