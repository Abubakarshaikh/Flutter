import 'package:flutter/material.dart';
import 'package:assignment14_email_password_navigator/secondscreen.dart';

void main() => runApp(LogInApp());

class LogInApp extends StatefulWidget {
  @override
  _LogInAppState createState() => _LogInAppState();
}

class _LogInAppState extends State<LogInApp> {
  // String myEmail;
  // int myPassword;
  // bool correct;
  // TextEditingController email = TextEditingController();
  // TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // routes: {
      //   '/': (BuildContext context) => SecondScreen(),
      // },
      home: Scaffold(
        body: Column(
          children: [
            // TextField(
            //   style: TextStyle(color: Colors.green),
            //   controller: email,
            // ),
            // TextField(
            //   style: TextStyle(color: Colors.green),
            //   controller: password,
            // ),
            RaisedButton(
              onPressed: () {
                // setState(() {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SecondScreen(),
                    ));
                // });
              },
            ),
          ],
        ),
      ),
    );
  }
}

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hey"),
        ),
        body: Center(
          child: Container(
            color: Colors.teal,
            child: Text('Hello, how are you!!'),
          ),
        ),
      ),
    );
  }
}
