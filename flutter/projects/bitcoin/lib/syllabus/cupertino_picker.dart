import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bitcoin/coin_data.dart';

class TCuperTinoPicker extends StatefulWidget {
  @override
  _TCuperTinoPickerState createState() => _TCuperTinoPickerState();
}

class _TCuperTinoPickerState extends State<TCuperTinoPicker> {
  List<Text> getCupertino() {
    List<Text> cupertinoPickerItems = [];
    for (String currency in currenciesList) {
      var newItems = Text(currency);
      cupertinoPickerItems.add(newItems);
    }
    return cupertinoPickerItems;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: CupertinoPicker(
            backgroundColor: Colors.lightBlue,
            itemExtent: 22.0,
            children:getCupertino(),
            onSelectedItemChanged: (selectedIndex) {
              print(selectedIndex);
            },
          ),
        ),
      ),
    );
  }
}
