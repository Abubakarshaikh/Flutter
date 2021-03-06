// lifting up state
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// first state
class Demo1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('get data'),
    );
  }
}

class Demo2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          onChanged: (value){},
        ),
        ElevatedButton(
          child: Text('add'),
          onPressed: (){},
        )
      ],
    );
  }
}

class Demo3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}