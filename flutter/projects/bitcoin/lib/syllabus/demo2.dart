import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

// Learn to use Dart loops to create recurring widgets for IOS
// ----------------------------------------------------
class Demo2 extends StatefulWidget {
  @override
  _Demo2State createState() => _Demo2State();
}

class _Demo2State extends State<Demo2> {
  String selectedCurrency = 'INR';
  List<String> currenciesList = [
    'AUD',
    'BRL',
    'CAD',
    'CNY',
    'EUR',
    'GBP',
    'HKD',
    'IDR',
    'ILS',
    'INR',
  ];
  CupertinoPicker getCupertinoPicker() {
    List<Text> cupertinoPickerItems = [];
    for (String currency in currenciesList) {
      var newItems = Text(currency);
      cupertinoPickerItems.add(newItems);
    }

    return CupertinoPicker(
      children: cupertinoPickerItems,
      itemExtent: 32.0,
      backgroundColor: Colors.lightBlue,
      onSelectedItemChanged: (selectedIndex) {
        setState(() {
          selectedCurrency = currenciesList[selectedIndex];
          print(selectedCurrency);
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.lightBlue,
          child: getCupertinoPicker(),
        ),
      ),
    );
  }
}
