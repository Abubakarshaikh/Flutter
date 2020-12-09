import 'package:flutter/material.dart';

void main() => runApp(ProfileApp());

class ProfileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purple.shade800,
        body: ProfilePage(),
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          child: Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Column(
                children: [
                  FloatingActionButton(
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.phone,
                      color: Colors.purple,
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  FloatingActionButton(
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.email,
                      color: Colors.purple,
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  FloatingActionButton(
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.web,
                      color: Colors.purple,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 30,
              ),
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 105,
                child: CircleAvatar(
                  radius: 100,
                  backgroundImage: AssetImage('images/abubakar.jpg'),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Container(
          child: Text(
            "Andrew Neil",
            style: TextStyle(
                fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          child: Text(
            "Surkhot, Nepal",
            style: TextStyle(
                fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Container(
          child: Text(
            "User Interface Designer and \n front-end developer",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 12,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FlatButton(
                color: Colors.white,
                child: Text(
                  "Message",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                onPressed: () {},
              ),
              SizedBox(
                width: 8,
              ),
              FlatButton(
                color: Colors.white,
                child: Text(
                  "Following",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}
