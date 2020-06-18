import 'dart:ui';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter Typography"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                "Contoh 01 (tanpa apapun)",
                style: TextStyle(fontSize: 20),
              ),
              Text(
                "Contoh 02 (small caps)",
                style: TextStyle(
                  fontSize: 20,
                  fontFeatures: [FontFeature.enable("smcp")]
                ),
              ),
              Text(
                "Contoh 3 1/2 (small caps)",
                style: TextStyle(
                  fontSize: 20,
                  fontFeatures: [
                    FontFeature.enable("smcp"),
                    FontFeature.enable("frac")
                  ]
                ),
              ),
              Text(
                "Milonga 3 1/2 (small caps)",
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Milonga",
                  fontFeatures: [
                    FontFeature.enable("smcp"),
                    FontFeature.enable("frac")
                  ]
                ),
              ),
              Text(
                "Contoh Cardo 19 (tanpa apapun)",
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Cardo"
                ),
              ),
              Text(
                "Contoh Cardo 19 (old style)",
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Cardo",
                  fontFeatures: [
                    FontFeature.oldstyleFigures()
                  ]
                ),
              ),
              Text(
                "Gabriola (default)",
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: "Gabriola",
                  fontFeatures: [
                    FontFeature.oldstyleFigures()
                  ]
                ),
              ),
              Text(
                "Gabriola (style set no 5)",
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: "Gabriola",
                  fontFeatures: [
                    FontFeature.stylisticSet(5)
                  ]
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}