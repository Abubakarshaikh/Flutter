// The Flutter ListView
import 'package:flutter/material.dart';
void main(){

  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // chat view system: How to Make Dynamic input in listView
      // child: ListView(
      //   children: <Widget>[ // dart list -> widget list
      //     ListTile(), // hard codded data -> dynamic input upto 1000 texts(String) widgets
      //     ListTile(), // hard codded , not we want
      //     ListTile(), // hard codded , not we want
      //     ListTile(), // hard codded , not we want
      //     ListTile(), // hard codded , not we want
      //     ListTile(), // hard codded , not we want
      //   ],
      // ),
      child: ListView(
        children: tileList(),
      ),
    );
  }
}



           // PRACTICE ------------------ LIST , TYPE WIDGET

                  //  List text = [Text('hello, world')]; // List dynamic types, not static typed
                  //  text1 = []; // false 
                  //  final text2 = []; // true
                  //  const text3 = []; // true
                  //  var text4 = []; // true


                // The element type 'String' can't be assigned to the list type 'Widget'
                  //  List<Widget> text = ['hello',]; // false
                  //  List<Widget> text = [Text('hello')]; // true: > dunamic input , not hard codded


                // A function body must be provided Try adding a function body.
                    // List<Text> text = [Text('Hello, world')]; // true: variable > initialization
                    // text.add(Text('hey')); // false: you cant implement without function



              // we need a function either main function OR else
              //**function initilization
              // List<Text> textList(){} // return text list

              // Decorated List, Production ready 
              //**function initilization -> return typed > List<ListTile> , this is not initialization
              // List<ListTile> tileList(){ // // return ListTile list
              //     List<ListTile> tileTexts = []; // variable initialization typed List<ListTile>
              //     var texts = ListTile(
              //       title: Text('Hey, whatsApp'),
              //     );
              //     tileTexts.add(texts);

              //     return tileTexts;
              // }

              // Exact Solution
              List<ListTile> tileList(){ // // return ListTile list
                  List<ListTile> tileTexts = []; // variable initialization typed List<ListTile>

                  // ideal case
              // List<ListTile> tileTexts = [ListTile, ListTile, ListTile]; // variable initialization typed List<ListTile>
                  for(int i=0; i<10; i++){
                    var text = ListTile(
                      title: Text('$i'),
                    );

                    tileTexts.add(text);
                  }
                  return tileTexts;
              }

// list = [kumdg awdfa]; // hard coded , not use this
// list.add(abc) // use this
