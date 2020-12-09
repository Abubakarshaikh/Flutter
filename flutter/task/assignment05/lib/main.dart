import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Center(
          child: Text(
            "Dicee Game",
            style: TextStyle(
              fontFamily: 'Pacifico',
              fontWeight: FontWeight.w600,
              fontSize: 26,
            ),
          ),
        ),
      ),
      body: DicePage(),
    ),
  ));
}

class DicePage extends StatefulWidget {
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int diceplayer1 = 1;
  int diceplayer2 = 1;

  void diceChangePlayer1() {
    setState(() {
      diceplayer1 = Random().nextInt(6) + 1;
    });
  }

  void diceChangePlayer2() {
    setState(() {
      diceplayer2 = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  child: Text("Player-1 S: $diceplayer1"),
                  margin: EdgeInsets.only(top: 10, left: 4),
                  color: Colors.teal,
                  height: 30,
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Expanded(
                child: Container(
                  child: Text("Player-2 S: $diceplayer2"),
                  margin: EdgeInsets.only(top: 10, right: 4),
                  color: Colors.teal,
                  height: 30,
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 10, right: 4, left: 4),
            color: Colors.amber,
            height: 100,
          ),
          Container(
            padding: EdgeInsets.only(top: 20, bottom: 10),
            width: 150,
            height: 150,
            child: Image.asset(
              'assets/images/dice$diceplayer1.png',
              color: Colors.black,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FlatButton(
                child: Icon(Icons.arrow_upward),
                color: Colors.red,
                onPressed: () {
                  diceChangePlayer1();
                },
              ),
              SizedBox(
                width: 10,
              ),
              FlatButton(
                child: Icon(Icons.arrow_upward),
                color: Colors.red,
                onPressed: () {
                  diceChangePlayer2();
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
