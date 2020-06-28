import 'package:flutter/material.dart';
import 'package:flutter_app/ui/pages/main_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/user_bloc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        builder: (context) => UserBloc(),
        child: MainPage(),
      ),
    );
  }
}
