import 'package:flutter/material.dart';
import 'dart:math';

int leftDiceNumber = 1;
int rightDiceNumber = 1;

void changeDicePage() {
  // setState(() {
  leftDiceNumber = Random().nextInt(6) + 1;
  rightDiceNumber = Random().nextInt(6) + 1;
  // });
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
        // setState(() {
        rightDiceNumber = Random().nextInt(6) + 1;
        leftDiceNumber = Random().nextInt(6) + 1;
        // });
      },
    ),
  );
}
