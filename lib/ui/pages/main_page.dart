import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_app/services/auth_services.dart';

class MainPage extends StatelessWidget {
  final FirebaseUser user;

  MainPage(this.user);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("Main Page"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text(user.uid),
            RaisedButton(
              child: Text("Sign Out"),
              onPressed: () async {
                await AuthServices.signOut();
              },
            ),
          ],
        ),
      ),
    );
  }
}
