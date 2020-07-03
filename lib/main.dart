import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.srirachaTextTheme().copyWith(
          bodyText1: GoogleFonts.modak(),
        ),
      ),
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color fontColor = const Color(0xFFFFB401);

    return Scaffold(
      backgroundColor: const Color(0xFF1E252D),
      appBar: AppBar(
        backgroundColor: const Color(0xFF282F37),
        title: Text("Google Fonts"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text(
              "I'll keep learning Flutter!",
              style: TextStyle(
                color: fontColor,
                fontSize: 25,
              ),
            ),
            Text(
              "I'll keep learning Flutter!",
              style: Theme.of(context).textTheme.bodyText1.copyWith(
                color: fontColor,
                fontSize: 25,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
