// what is state

//  ------------------------------------------> Local State <-----------------------------------------
//   Why this is Local State?
//-> Because values can't use outside the .. statefulwidget .
// import 'package:flutter/material.dart';

// class TaskCheckBox extends StatefulWidget {
//   @override
//   _TaskCheckBoxState createState() => _TaskCheckBoxState();
// }

// class _TaskCheckBoxState extends State<TaskCheckBox> {
//   bool isChecked = false;
//   @override
//   Widget build(BuildContext context) {
//     return Checkbox(
//       activeColor: Colors.lightBlueAccent,
//       value: isChecked,

//       // true OR false, if default false -> give true
//       onChanged: (newvalue) {
//         setState(() {
//           isChecked = newvalue;
//         });
//       },
//     );
//   }
// }

//  ------------------------------------------> Global State <-----------------------------------------
//   Why this is Local State?
//-> Because values can't use outside the .. statefulwidget .
import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isCheck = false;

  // named Function
  // void checkBoxCallBack(bool checkBoxState){
  //   setState(() {
  //     isCheck = checkBoxState;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('Go to Gym ..'),
      trailing: TaskCheckBox(isCheck, (bool checkBoxState) {
        setState(() {
          isCheck = checkBoxState;
        });
      }),
    );
  }
}

class TaskCheckBox extends StatelessWidget {
  final bool checkBoxState;
  final Function toggleCheckBoxState;
  TaskCheckBox(this.checkBoxState, this.toggleCheckBoxState);
  @override
  @override
  Widget build(BuildContext context) {
    return Checkbox(

      //false | Same onChange have false value
      value: checkBoxState,

      // We uses CallBack  | toggleCheckBoxState: false OR true
      // onChanged: (newValue){},
      // onChanged: toggleCheckBoxState,

      onChanged: ,
    );
  }
}