import 'package:flutter/material.dart';




// Named Routes
// Refactor Routes with the Static Const
void main(){
  runApp(MaterialApp(
    // home: FrontScreen(),
    initialRoute: 'String1',
    routes:{
      'String1': (context)=>FrontScreen(),
      'String2': (context)=>SignScreen(),
      'String3': (context)=>SignUpScreen(),
    },
  ));

}

//Screen1
class FrontScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(
            child: Text("Login Screen"),
            onPressed: (){
              Navigator.pushNamed(context, 'String2');
            },
          ),
          ElevatedButton(
            child: Text("Sign up Screen"),
            onPressed: (){
              Navigator.pushNamed(context, 'String3');
            },
          ),
        ],
      ),
    );
  }
}


// Screen2
class SignScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Please Login .."),
      ),
    );
  }
}

//Screen3
class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Sign up you self"),),
    );
  }
}