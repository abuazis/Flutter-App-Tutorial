import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_app/bloc/user_bloc.dart';
import 'package:flutter_app/model/user_model.dart';
import 'package:flutter_app/ui/widgets/user_card.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPage extends StatelessWidget {
  final Random random = Random();
  @override
  Widget build(BuildContext context) {
    UserBloc bloc = BlocProvider.of<UserBloc>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text("Demo MVVM"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          RaisedButton(
            child: Text(
              "Pick Random User",
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.grey,
            onPressed: () {
              bloc.dispatch(random.nextInt(10) + 1);
            },
          ),
          BlocBuilder<UserBloc, User>(
            builder: (context, user) =>
                (user is UninitializedUser) ? Container() : UserCard(user),
          )
        ],
      ),
    );
  }
}
