import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/services/database_services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Firestore Demo"),
        ),
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  child: Text("Add Data"),
                  onPressed: () {
                    DatabaseServices.createOrUpdateProduct(
                      "1",
                      name: "Masker",
                      price: 1000000,
                    );
                  },
                ),
                RaisedButton(
                  child: Text("Edit Data"),
                  onPressed: () {
                    DatabaseServices.createOrUpdateProduct(
                      "1",
                      name: "Masker",
                      price: 2000000,
                    );
                  },
                ),
                RaisedButton(
                  child: Text("Delete Data"),
                  onPressed: () {
                    DatabaseServices.deleteProduct("1");
                  },
                ),
                RaisedButton(
                  child: Text("Get Data"),
                  onPressed: () async {
                    DocumentSnapshot snapshot = await DatabaseServices.getProduct("1");
                    print(snapshot.data['nama']);
                    print(snapshot.data['harga']);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
