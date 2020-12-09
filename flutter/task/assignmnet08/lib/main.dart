import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Row(
              children: [
                Icon(Icons.favorite),
                Icon(Icons.favorite),
                Icon(Icons.favorite),
              ],
            ),
            margin: EdgeInsets.only(top: 20),
            height: 50,
            width: 370,
            color: Colors.teal,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(Icons.favorite),
                Icon(Icons.favorite),
                Icon(Icons.favorite),
              ],
            ),
            margin: EdgeInsets.only(top: 20, left: 10, right: 10),
            height: 50,
            width: 370,
            color: Colors.teal,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.favorite),
                Icon(Icons.favorite),
                Icon(Icons.favorite),
              ],
            ),
            margin: EdgeInsets.only(top: 20, left: 10, right: 10),
            height: 50,
            width: 370,
            color: Colors.teal,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.favorite),
                Icon(Icons.favorite),
                Icon(Icons.favorite),
              ],
            ),
            margin: EdgeInsets.only(top: 20, left: 10, right: 10),
            height: 50,
            width: 370,
            color: Colors.teal,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.favorite),
                Icon(Icons.favorite),
                Icon(Icons.favorite),
              ],
            ),
            margin: EdgeInsets.only(top: 20, left: 10, right: 10),
            height: 50,
            width: 370,
            color: Colors.teal,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.favorite),
                Icon(Icons.favorite),
                Icon(Icons.favorite),
              ],
            ),
            margin: EdgeInsets.only(top: 20, left: 10, right: 10),
            height: 50,
            width: 370,
            color: Colors.teal,
          ),
        ],
      ),
    ),
  ));
}
