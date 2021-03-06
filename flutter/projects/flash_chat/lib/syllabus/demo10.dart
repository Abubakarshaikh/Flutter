// Turning Streams into Widgets Using the StreamBuilder
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
class StreamMessages extends StatefulWidget {
  @override
  _StreamMessagesState createState() => _StreamMessagesState();
}

class _StreamMessagesState extends State<StreamMessages> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      // stream: , // Async Stream<dynamic>:stream   ->   just like sync list<dynamic>:children
      // ** You should create your own stream:
      // stream: snapshots(), // they doesnt work because , this is the _firestore stream
      stream: timedCounter(Duration()),
      builder: (context,snapshot){// {Widget Function(BuildContext, AsyncSnapshot<dynamic>) builder}
             if (snapshot.hasData){
               var messages = snapshot.data['text'];
             }
      }

    );
  }
}

// AsyncSnapshot<dynamic> build
// -----------------------------------> Dart Stream <--------------------------------------------- 
// Stream stream = ['Hello'];

// streamList(){
//   Stream stream = ['Hello'];
// }



Stream<int> timedCounter(Duration interval, [int maxCount]) async* {
  int i = 0;
  while (true) {
    await Future.delayed(interval);
    yield i++;
    if (i == maxCount) break;
  }
}



// -----------------------------------> AsyncSnapshot<dynamic> build <--------------------------------------------- 


// -----------------------------------> StreamBuilder with fireStore <--------------------------------------------- 
// objective
// * import 'package:cloud_firestore/cloud_firestore.dart';
// * final _fireStore = FirebaseFirestore.instance;
// * StreamBuilder widget
// * stream: _fireStore.collection('message').snapshots(),
// * Stream<QuerySnapshot> snapshots()

final _fireStore = FirebaseFirestore.instance;
class FstreamBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      //Error: The argument type 'CollectionReference' can't be assigned to the parameter type 'Stream<dynamic>'.
      // stream: _fireStore.collection('message'),
      stream: _fireStore.collection('message').snapshots(),
      builder: (context, snapshot){
        List<Text> list = [];
        if(snapshot.hasData){
          var values = snapshot.data;
          for(var message in values){
            list.add(message);
          }
        }

        return ListView(
          children: list,
        );
      },
    );
  }
}

// -----------------------------------> StreamBuilder with mysqli <--------------------------------------------- 

class Test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: ,
      builder: ,
    );
  }
}