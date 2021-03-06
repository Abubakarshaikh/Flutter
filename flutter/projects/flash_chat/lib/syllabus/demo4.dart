// Code Refactoring
//  Refactoring consists of improving the internal structure of an existing program's source code, 
// while preserving its external behavior.
// What is the purpose of refactoring the code?
// ->The basic purpose of code refactoring is to make the code more efficient and maintainable.

// TextField -> 4 widget
// elevated button -> 4 widget

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(
            child: Text('Regsiter'),
            onPressed: (){},
          ),
          ElevatedButton(
            child: Text('login'),
            onPressed: (){},
          ),
        ],
      ),
    );
  }
}

class RegistrationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
                    TextField(
            onChanged: (value){
              // implement value
            },
            decoration: InputDecoration(
              hintText: 'input email',
            ),
          ),
          TextField(
            onChanged: (value){
              // implement value
            },
            decoration: InputDecoration(
              hintText: 'input password',
            ),
          ),
          ElevatedButton(
            child: Text('Register'),
            onPressed: (){
              // implement resgister
            },
          ),
        ],
      ),
    );
  }
}

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
                    TextField(
            onChanged: (value){
              // implement value
            },
            decoration: InputDecoration(
              hintText: 'input email',
            ),
          ),
          TextField(
            onChanged: (value){
              // implement value
            },
            decoration: InputDecoration(
              hintText: 'input password',
            ),
          ),
          ElevatedButton(
            child: Text('Login'),
            onPressed: (){
              // implement resgister
            },
          ),
        ],
      ),
    );
  }
}




// stateless -> 
// statefull ->
// class RoundedButton extends StatefulWidget {
  

//   @override
//   _RoundedButtonState createState() => _RoundedButtonState();
// }

// class _RoundedButtonState extends State<RoundedButton> {
//   Text Ttext;
//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//       child: Ttext,
//       onPressed: (){},
//     );
//   }
// }

class MyRoundedButton extends StatelessWidget {
  MyRoundedButton(this.textT,  this.onTap);
  final Widget textT;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: textT,
      onPressed:onTap,
    );
  }
}

class MyButton extends StatefulWidget {
  @override
  _MyButtonState createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}