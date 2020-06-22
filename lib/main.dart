import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'provider/time_state.dart';
import 'widgets/custom_progress_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Custom Progress Bar"),
        ),
        body: Center(
          child: ChangeNotifierProvider<TimeState>(
            create: (context) => TimeState(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Consumer<TimeState>(
                  builder: (context, timeState, _) => CustomProgressBar(
                    width: 200,
                    value: timeState.time,
                    totalValue: 15,
                  ),
                ),
                SizedBox(height: 10),
                Consumer<TimeState>(
                  builder: (context, timeState, _) => RaisedButton(
                    color: Colors.lightBlue,
                    child: Text(
                      "Start",
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                      Timer.periodic(Duration(seconds: 1), (timer) {
                        (timeState.time == 0)
                            ? timer.cancel()
                            : timeState.time -= 1;
                      });
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
