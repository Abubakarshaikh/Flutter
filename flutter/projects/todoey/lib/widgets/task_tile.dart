import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  // run time dynamic
  // bool ischecked = false;

  // run time static
  final bool ischecked;
  final String taskTitle;
  final Function checkBoxCallback;
  final Function longPressedCallback;

  TaskTile({this.ischecked, this.taskTitle, this.checkBoxCallback, this.longPressedCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressedCallback,
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: ischecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: ischecked,
        onChanged: checkBoxCallback,
      ),
    );
  }
}

// ----------------------------------> learn liftstate Up AND callback <------------------------------------
// class TaskTile extends StatefulWidget {
//   @override
//   _TaskTileState createState() => _TaskTileState();
// }

// class _TaskTileState extends State<TaskTile> {
//   bool ischecked = false;
//   // void checkboxCallBack(bool checkBoxState){
//   //   setState(() {
//   //     ischecked = checkBoxState;
//   //   });
//   // }
//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       title: Text(
//         'This is Task .',
//         style: TextStyle(
//           decoration: ischecked ? TextDecoration.lineThrough : null,
//         ),
//       ),
//       trailing: TaskCheckBox(
//           checkBoxState: ischecked,
//           toggleCheckBoxState: (bool checkBoxState) {
//             setState(() {
//               ischecked = checkBoxState;
//             });
//           }),
//     );
//   }
// }

// class TaskCheckBox extends StatelessWidget {
//   TaskCheckBox({this.checkBoxState, this.toggleCheckBoxState});
//   final bool checkBoxState;
//   final Function toggleCheckBoxState;
//   @override
//   Widget build(BuildContext context) {
//     return Checkbox(
//       activeColor: Colors.lightBlueAccent,
//       value: checkBoxState,
//       onChanged: toggleCheckBoxState,
//     );
//   }
// }
