import 'package:flutter/material.dart';
class TPadding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Padding'),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.lightBlue,
            child: Padding(
              padding: EdgeInsets.all(40.0),
              child: Text('Hello, PAdding 1'),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(40.0),
            child: Container(
              color: Colors.lightBlue,
              child: Text('Hello, world'),
            ),
          ),
          Padding(
            // padding: EdgeInsets.all(30.0),
            // padding: EdgeInsets.lerp(EdgeInsets.all(3), b, t),
            // padding: EdgeInsets.fromLTRB(5, 25, 20, 10),
            padding:EdgeInsets.only(left:25),
            child: Card(
              elevation: 9,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              color: Colors.black,
              child: Text('Cards'),
            ),
          ),
        ],
      ),
    );
  }
}