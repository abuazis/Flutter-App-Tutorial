import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_app/services/auth_services.dart';
import 'package:flutter_app/services/database_services.dart';
import 'package:image_picker/image_picker.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String imagePath;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Firebase Storage Demo"),
        ),
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                (imagePath != null)
                    ? Container(
                        width: 200,
                        height: 200,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.black),
                          image: DecorationImage(
                            image: NetworkImage(imagePath),
                            fit: BoxFit.cover,
                          ),
                        ),
                      )
                    : Container(
                        width: 200,
                        height: 200,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.black),
                        ),
                      ),
                SizedBox(
                  height: 10,
                ),
                RaisedButton(
                  child: Text("Sign In"),
                  onPressed: () async {
                    AuthServices.signInAnonymous();
                  },
                ),
                RaisedButton(
                  child: Text("Upload Image"),
                  onPressed: () async {
                    File file = await getImage();
                    imagePath = await DatabaseServices.uploadImage(file);

                    setState(() {});
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

Future<File> getImage() async {
  var image = await ImagePicker().getImage(source: ImageSource.gallery);
  return File(image.path);
}
