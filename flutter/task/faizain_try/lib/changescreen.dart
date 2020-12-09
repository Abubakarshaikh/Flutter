import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Center(
        child: Container(
          child: Text(
            "Well come",
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
    );
  }
}
