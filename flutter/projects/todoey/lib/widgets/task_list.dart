//  -------------------------> Uses Provider Package <---------------------------

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/widgets/task_tile.dart';
import 'package:todoey/model/task_data.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child){
        return ListView.builder(
         itemCount: taskData.taskCount,
        itemBuilder: (context, index){
          final task = taskData.tasks[index];
          return TaskTile(
            ischecked:task.isDone,
            taskTitle: task.name,
            checkBoxCallback: (checkBoxState){
              taskData.updateTask(task);
            },
            longPressedCallback: (){
              taskData.deletTask(task);
            },
          );
        },
      );
      },
    );
  }
}



//  -------------------------> Preparing to learn ListView.builder <---------------------------

// import 'package:flutter/material.dart';
// import 'package:todoey/widgets/task_tile.dart';
// import 'package:todoey/model/task.dart';

// class TaskList extends StatefulWidget {
//   final List<Task> tasks;
//   TaskList(this.tasks);

//   @override
//   _TaskListState createState() => _TaskListState();
// }

// class _TaskListState extends State<TaskList> {
//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//        itemCount: widget.tasks.length,
//       itemBuilder: (context, index){
//         return TaskTile(
//           ischecked: widget.tasks[index].isDone,
//           taskTitle: widget.tasks[index].name,
//           checkBoxCallback: (checkBoxState){
//             setState(() {
//               widget.tasks[index].toggleDone();
//             });
//           }
//         );
//       },
//     );
//   }
// }


//  -------------------------> Preparing to learn ListView.builder <---------------------------
// import 'package:flutter/material.dart';
// import 'package:todoey/widgets/task_tile.dart';
// import 'package:todoey/model/task.dart';

// class TaskList extends StatefulWidget {
//   @override
//   _TaskListState createState() => _TaskListState();
// }

// class _TaskListState extends State<TaskList> {
//   List<Task> tasks = [
//     Task(name: 'buy milk', isDone: true),
//     Task(name: 'buy break', isDone: true),

//   ];
//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       children: [
//         TaskTile(taskTitle:tasks[0].name , ischecked: tasks[0].isDone),
//         TaskTile(taskTitle:tasks[1].name , ischecked: tasks[1].isDone),
//         TaskTile(taskTitle:tasks[2].name , ischecked: tasks[2].isDone),
//       ],
//     );
//   }
// }