import 'package:flutter/material.dart';

void main() => runApp(WhatsupApp());

class WhatsupApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          shadowColor: Colors.teal[700],
          actions: [
            Icon(Icons.search),
            SizedBox(
              width: 15,
            ),
            Icon(Icons.more_vert),
            SizedBox(
              width: 5,
            ),
          ],
          backgroundColor: Colors.teal[700],
          title: Text(
            "WhatsApp",
            style: TextStyle(
              fontFamily: 'Helvetica',
              fontWeight: FontWeight.w500,
              fontSize: 22,
            ),
          ),
        ),
        body: WhatsupPage(),
      ),
    );
  }
}

class WhatsupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(top: 15),
          color: Colors.teal[700],
          child: Row(
            children: [
              SizedBox(
                width: 8,
              ),
              Icon(
                Icons.camera_alt_rounded,
                color: Colors.teal,
              ),
              SizedBox(
                width: 40,
              ),
              Text(
                "CHATS",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Helvetica',
                  fontSize: 12,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(
                width: 80,
              ),
              Text(
                "STATUS",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Helvetica',
                  fontSize: 12,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(
                width: 70,
              ),
              Text(
                "CALLS",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Helvetica',
                  fontSize: 12,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
