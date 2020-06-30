import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'ui/styles/custom_style.dart';
import 'ui/widgets/custom_button.dart';
import 'ui/widgets/manual_button.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[800],
        appBar: AppBar(
          title: Txt(
            "Division",
            style: CustomStyle.txtStyle.clone()..fontSize(18),
          ),
          backgroundColor: Colors.red[900],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CustomButton(CustomStyle.buttonStyle),
              SizedBox(height: 20),
              CustomButton(
                CustomStyle.buttonStyle.clone()
                  ..background.color(Colors.green[300])
                  ..border(all: 3, color: Colors.green[900]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
