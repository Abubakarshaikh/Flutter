import 'package:flutter/material.dart';
import 'package:faizain_try/changescreen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String myemail;
  String mypassword;

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Facebook",
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Container(
            width: 250,
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Email',
              ),
              controller: email,
            ),
          ),
          TextField(
            decoration: InputDecoration(
              hintText: 'Password',
            ),
            controller: password,
          ),
          RaisedButton(
            color: Colors.blue,
            onPressed: () {
              setState(() {
                myemail = email.text;
                mypassword = password.text;
                if (myemail == 'abc@gmail.com' && mypassword == '12345') {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SecondScreen(),
                      ));
                }
              });
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //       builder: (context) => SecondScreen(),
              //     ));
            },
            child: Text(
              "Log In",
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
