import 'package:flutter/material.dart';


// Learn to use Dart loops to create recurring widgets for Android
// ----------------------------------------------------
class Demo1 extends StatefulWidget {
  @override
  _Demo1State createState() => _Demo1State();
}

class _Demo1State extends State<Demo1> {
  String seletedcurrency = 'USD';
  List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'USD',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',];
  DropdownButton getDropdownButtons(){
    List<DropdownMenuItem> dropdownMenuItems = [];
    for(String currency in currenciesList){
      var newItems = DropdownMenuItem(
        child: Text(currency),
        value: currency,
      );
      dropdownMenuItems.add(newItems);
    }
    // return dropdownMenuItems;

    return DropdownButton(
      value: seletedcurrency,
      items: dropdownMenuItems,
      onChanged: (value){
        setState(() {
          seletedcurrency = value;
          print(seletedcurrency);
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
          child: getDropdownButtons(),
          // child: DropdownButton(
          //   items: getDropdownItems(),
          //   onChanged: (value){
          //     setState(() {
          //       seletedcurrency = value;
          //       print(seletedcurrency);
          //     });
          //   },
          // ),
        ),
      ),
    );
  }
}