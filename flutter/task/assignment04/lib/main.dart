import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  int num = 0;
  TextEditingController v1 = TextEditingController();

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.donut_small),
          title: Text(
            "MyApp",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.black,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '${num}',
                style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                height: 60,
                width: 180,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(50)),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextField(
                    cursorColor: Colors.white,
                    style: TextStyle(color: Colors.white),
                    controller: v1,
                    decoration: InputDecoration(

                        // labelStyle: TextStyle(color: Colors.white),
                        hintText: "Insert Value",
                        hintStyle: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
              RaisedButton(
                onPressed: () {
                  setState(() {
                    num = int.parse(v1.text);
                    num++;
                  });
                },
                child:
                    Text("Submit Value", style: TextStyle(color: Colors.white)),
                color: Colors.black,
              ),
              RaisedButton(
                onPressed: () {
                  setState(() {
                    num++;
                  });
                },
                child: Text("Add", style: TextStyle(color: Colors.white)),
                color: Colors.black,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
