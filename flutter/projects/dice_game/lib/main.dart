import 'dart:math';
import 'package:flutter/material.dart';
// import 'dicepage.dart';
// import 'package:dice_game/dicepage.dart';

void main() {
  return runApp(MaterialApp(
    title: 'Dicee',
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Center(child: Text("Dicee")),
      ),
      body: DicePage(),
    ),
  ));
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void changeDicePage() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  Expanded buildkeyLeft() {
    return Expanded(
      child: FlatButton(
        child: Image.asset("assets/images/dice$leftDiceNumber.png"),
        onPressed: () {
          changeDicePage();
        },
      ),
    );
  }

  Expanded buildkeyRight() {
    return Expanded(
      child: FlatButton(
        child: Image.asset("assets/images/dice$rightDiceNumber.png"),
        onPressed: () {
          setState(() {
            rightDiceNumber = Random().nextInt(6) + 1;
            leftDiceNumber = Random().nextInt(6) + 1;
          });
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          buildkeyLeft(),
          buildkeyRight(),
        ],
      ),
    );
  }
}
