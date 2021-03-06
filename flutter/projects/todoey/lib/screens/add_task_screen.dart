import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/model/task.dart';
import 'package:todoey/model/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      String newTaskTitle;
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              child: Text(
                'Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.lightBlueAccent,
                ),
              ),
            ),
            TextField(
              textAlign: TextAlign.center,
              autofocus: true,
              decoration: InputDecoration(),
              onChanged: (value) {
                newTaskTitle = value;
              },
            ),
            ElevatedButton(
              child: Text('Add'),
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Colors.lightBlueAccent),
              ),
              onPressed: () {

              //You can't do this , without any method called///
               final task = newTaskTitle;
               Provider.of<TaskData>(context, listen: false).addTask(task);
               Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
