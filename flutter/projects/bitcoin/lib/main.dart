import 'package:flutter/material.dart';
import 'package:bitcoin/price_screen.dart';
import 'syllabus/demo2.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.lightBlue,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: PriceScreen(),
      // home: Demo2(),
    );
  }
}
