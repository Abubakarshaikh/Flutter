import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Assignment1",
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            "assignment1",
            style: TextStyle(
                color: Colors.teal,
                fontSize: 28.0,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(10)),
              width: 200.0,
              height: 25.0,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      (Icons.perm_identity_rounded),
                      color: Colors.white,
                      size: 17.0,
                    ),
                    SizedBox(
                      width: 4.0,
                    ),
                    Text(
                      "Abubakar",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 4.0,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(10)),
              width: 200.0,
              height: 25.0,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      (Icons.email),
                      color: Colors.white,
                      size: 17.0,
                    ),
                    SizedBox(
                      width: 4.0,
                    ),
                    Text(
                      "abc@gmail.com",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 4.0,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(10)),
              width: 200.0,
              height: 25.0,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      (Icons.phone),
                      color: Colors.white,
                      size: 17.0,
                    ),
                    SizedBox(
                      width: 4.0,
                    ),
                    Text(
                      "+923789919",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 4.0,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.yellow.shade800,
                  borderRadius: BorderRadius.circular(10)),
              width: 200.0,
              height: 25.0,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      (Icons.credit_card),
                      color: Colors.white,
                      size: 17.0,
                    ),
                    SizedBox(
                      width: 4.0,
                    ),
                    Text(
                      "41369738794749",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
