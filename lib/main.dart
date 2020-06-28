import 'package:flutter/material.dart';

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
        appBar: AppBar(
          title: Text("Judul"),
        ),
        body: Container(),
      ),
    );
  }
}

class Person {
  String _name;
  
  void setWhat(String value) { _name = value; }
  String getterName() => _name;
}

// {
// 	"Stateless MyApp": {
// 		"prefix": "stateless myapp",
// 		"body": [
// 			"class MyApp extends StatelessWidget {",
// 			"\t@override",
// 			"\tWidget build(BuildContext context) {",
// 			"\t\treturn MaterialApp(",
// 			"\t\t\tdebugShowCheckedModeBanner: false,",
// 			"\t\t\thome: $0,",
// 			"\t\t);",
// 			"\t}",
// 			"}"
// 		]
// 	},
// 	"Stateless Page": {
// 		"prefix": "stateless page",
// 		"body": [
// 			"class $1 extends StatelessWidget {",
// 			"\t@override",
// 			"\tWidget build(BuildContext context) {",
// 			"\t\treturn MaterialApp(",
// 			"\t\t\thome: Scaffold(",
// 			"\t\t\t\tappBar: AppBar(",
// 			"\t\t\t\t\ttitle: Text('$1'),",
// 			"\t\t\t\t),",
// 			"\t\t\t\tbody: $0,",
// 			"\t\t\t),",
// 			"\t\t);",
// 			"\t}",
// 			"}"
// 		]
// 	},
// 	"Field Get Set": {
// 		"prefix": "field get set",
// 		"body": [
// 			"${1:fieldType} _${2:fieldName};",
// 			"",
// 			"void ${3:setterName}(${1:fieldType} value) { _${2:fieldName} = value; }",
// 			"${1:fieldType} ${4:getterName}() => _${2:fieldName};"
// 		]
// 	}
// }