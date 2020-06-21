import 'package:flutter/material.dart';
import 'widgets/user_profile.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final UserProfile profile = UserProfile(
    name: "Tony Stark",
    role: "Iron Man",
    photoURL: null,
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Text("Doc Comment Example"),
            backgroundColor: Colors.red[900]),
        body: Center(child: profile),
      ),
    );
  }
}
