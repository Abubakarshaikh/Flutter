import 'package:flutter/material.dart';
import 'package:bitcoin/coin_data.dart';

class TDropDownButton extends StatefulWidget {
  @override
  _TDropDownButtonState createState() => _TDropDownButtonState();
}

class _TDropDownButtonState extends State<TDropDownButton> {
  String selectedItem = 'USD';

  List<DropdownMenuItem>getCurrencyList(){
    List<DropdownMenuItem> dropdownMenuButtons = [];
    for(String currency in currenciesList){
      var newItems = DropdownMenuItem(
        child: Text(currency),
        value: currency,
      );
      dropdownMenuButtons.add(newItems);
    }
    return dropdownMenuButtons;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.lightBlue,
          child: DropdownButton(
            value: selectedItem,
            items: getCurrencyList(),
            onChanged: (value) {
              setState(() {
                selectedItem = value;
                print(selectedItem);
                print(value);
              });
            },
          ),
        ),
      ),
    );
  }
}