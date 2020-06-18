import 'package:flutter/material.dart';
import 'model/post_result_model.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  PostResult postResult = null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("API Demo"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text((postResult != null)
                  ? postResult.id +
                      " | " +
                      postResult.name +
                      " | " +
                      postResult.job +
                      " | " +
                      postResult.created
                  : "Data kagak ada"),
              RaisedButton(
                child: Text("POST"),
                onPressed: () {
                  PostResult.connectToAPI("Abuza", "Developer").then((value) {
                    postResult = value;
                    setState(() {});
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
