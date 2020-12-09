import 'package:flutter/material.dart';
// import 'package:assignment14_email_password_navigator/main.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hey"),
        ),
        body: Center(
          child: Container(
            color: Colors.teal,
            child: Text('Hello, how are you!!'),
          ),
        ),
      ),
    );
  }
}
