import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  int num = 0;
  TextEditingController v1 = TextEditingController();
  TextEditingController v2 = TextEditingController();

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Calculator"),
        ),
        body: Column(
          children: [
            Text("${num}"),
            TextField(
              controller: v1,
            ),
            SizedBox(
              height: 5,
            ),
            TextField(
              controller: v2,
            ),
            RaisedButton(
              color: Colors.teal,
              child: Text("Add"),
              onPressed: () {
                setState(() {
                  num = int.parse(v1.text);
                  num = int.parse(v1.text) + int.parse(v2.text);
                });
              },
            ),
            RaisedButton(
              color: Colors.teal,
              child: Text("Sub"),
              onPressed: () {
                setState(() {
                  num = int.parse(v1.text);
                  num = int.parse(v1.text) - int.parse(v2.text);
                });
              },
            ),
            RaisedButton(
              color: Colors.teal,
              child: Text("Mult"),
              onPressed: () {
                setState(() {
                  num = int.parse(v1.text);
                  num = int.parse(v1.text) * int.parse(v2.text);
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
