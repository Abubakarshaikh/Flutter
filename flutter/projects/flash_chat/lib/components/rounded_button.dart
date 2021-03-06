import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  RoundedButton({this.colour, @required this.onPressed, this.title});
  final Color colour;
  final String title;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: ElevatedButton(
        child: Text(title),
        onPressed: onPressed,
        style: ButtonStyle(
          // MaterialStateProperty<T> -> Any types which means, Color, Text, Size, Container
          minimumSize: MaterialStateProperty.all(Size(200.0, 42.0)),
          backgroundColor: MaterialStateProperty.all(colour),
          elevation: MaterialStateProperty.all(5.0),
        ),
      ),
    );
  }
}
