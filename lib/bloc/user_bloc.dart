import 'package:bloc/bloc.dart';
import 'package:flutter_app/model/user_model.dart';

class UserBloc extends Bloc<int, User> {
  @override
  User get initialState => UninitializedUser();

  @override
  Stream<User> mapEventToState(int event) async* {
    try {
      User user = await User.getUserFromAPI(event);
      yield user;
    } catch (_) {}
  }
}