import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TabBar myTabBar = TabBar(
      indicator: BoxDecoration(
        color: Colors.red,
        border: Border(
          bottom: BorderSide(
            color: Colors.purple,
            width: 5
          )
        )
      ),
      indicatorColor: Colors.red,
      tabs: <Widget>[
        Tab(
          icon: Icon(Icons.comment),
          text: "Comments"
        ),
        Tab(
          icon: Icon(Icons.computer),
          text: "Computer"
        ),
      ],
    );

    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Contoh Tab Bar"),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(myTabBar.preferredSize.height),
              child: Container(
                color: Colors.amber,
                child: myTabBar
              ),
            )
          ),
          body: TabBarView(
            children: <Widget>[
              Center(child: Text("Tab 1")),
              Center(child: Text("Tab 2")),
            ],
          ),
        ),
      )
    );
  }
}