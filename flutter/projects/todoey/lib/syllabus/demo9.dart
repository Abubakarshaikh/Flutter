// introdusing provider package

// // ---------------------------------> Prop drilling: <--------------------------------------------
// import 'package:flutter/material.dart';
// void main(){
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {

//   final String data = 'Hello';
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Secrete"),
//       ),
//       body: Level1(data),
//     );
//   }
// }

// class Level1 extends StatelessWidget {

//   final String data;
//   Level1(this.data);
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Level2(data),
//     );
//   }
// }

// class Level2 extends StatelessWidget {
//   final String data;
//   Level2(this.data);
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Level3(data),
//     );
//   }
// }

// class Level3 extends StatelessWidget {

//   final String data;
//   Level3(this.data);
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Text(data),
//     );
//   }
// }

// ---------------------------------> Using Provider package: <------------------------------------------
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   final String data = 'Hello';
//   @override
//   Widget build(BuildContext context) {
//     return Provider<String>(

//       // builder of classical providers should be replaced by create.
//       create: (context) => data,
//           child: MaterialApp(
//         home: Scaffold(
//           appBar: AppBar(
//             title: Text("Secrete"),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class Level1 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }

// class Level2 extends StatelessWidget {

//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }

// class Level3 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Text(Provider.of<String>(context)),
//     );
//   }
// }

// ---------------------------------> Provider: update state, ChangeNotifier <------------------------------------------
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Data>(

      // builder of classical providers should be replaced by create.
      create: (context) => Data(),
          child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            // listen: flase USE for not update every change
            title: Text(Provider.of<Data>(context, listen: false).data),
          ),
        ),
      ),
    );
  }
}

class Level1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class Level2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class Level3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(Provider.of<Data>(context).data),
    );
  }
}

class MyText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(Provider.of<Data>(context).data);
  }
}

class MyTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (newText){
        Provider.of<Data>(context).changeString(newText);
      },
    );
  }
}

// ChangeNotifier: comes from flutter it self FOR notifier listener
class Data extends ChangeNotifier {
  String data = 'some data';

  void changeString(String newString){
    data = newString;

    // when data change they rebuild all listener
    notifyListeners();
  }
}