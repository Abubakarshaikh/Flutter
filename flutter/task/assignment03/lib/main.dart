import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.teal,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('images/abubakar.jpg'),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Abubakar',
            style: TextStyle(
              fontSize: 30,
              fontFamily: 'Pacifico',
              color: Colors.white,
            ),
          ),
          Text(
            'Flutter Developer',
            style: TextStyle(
              letterSpacing: 2,
              fontSize: 20,
              fontFamily: 'Source Sans Pro',
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            color: Colors.white,
            width: 300,
            height: 33,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 35),
                  child: Icon(
                    Icons.phone,
                    color: Colors.teal,
                    size: 25.0,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 65),
                  child: Text(
                    "+92345678990",
                    style: TextStyle(
                      fontFamily: 'Pacifico',
                      fontSize: 18,
                      color: Colors.teal,
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            color: Colors.white,
            width: 300,
            height: 33,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 35),
                  child: Icon(
                    Icons.email,
                    color: Colors.teal,
                    size: 25.0,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 65),
                  child: Text(
                    "abc@email.com",
                    style: TextStyle(
                      fontFamily: 'Pacifico',
                      fontSize: 18,
                      color: Colors.teal,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    ),
  ));
}
