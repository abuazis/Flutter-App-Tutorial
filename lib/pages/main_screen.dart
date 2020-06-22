import 'package:flutter/material.dart';
import 'package:flutter_app/pages/second_screen.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Main Screen"),
      ),
      body: Center(
        child: RaisedButton(
           child: Text("Go To Second Page"),
           onPressed: () {
             Navigator.push(
              context, 
              MaterialPageRoute(
                builder: (context) {
                  return SecondScreen();
                }
              )
             );
           },
        ),
      ),
    );
  }
}