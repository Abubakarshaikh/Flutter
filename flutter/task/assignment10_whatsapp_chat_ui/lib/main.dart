import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: Column(
        children: [
          Container(
            color: Colors.teal,
            width: double.infinity,
            height: 50,
            child: Row(
              children: [
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
                Icon(
                  Icons.supervised_user_circle_rounded,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Osman",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 240,
                ),
                Icon(
                  Icons.phone_callback_rounded,
                  color: Colors.white,
                ),
                Icon(
                  Icons.more_vert,
                  color: Colors.white,
                )
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Card(
                  child: Text("Hey, i am here"),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  ));
}
