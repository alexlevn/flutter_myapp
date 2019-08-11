import 'package:flutter/material.dart';
import './task_tile.dart';
import '../models/task.dart';

class TasksList extends StatefulWidget {
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(name: 'Read the two declarations!'),
    Task(name: 'Determine what you want..'),
    Task(name: 'Visualization in 10 minutes.'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (context, index) {
          return TaskTile(
              name: tasks[index].name,
              isChecked: tasks[index].isDone,
              checkBoxCallback: (checkBoxState) {
                setState(() {
                  tasks[index].toggleDone();
                });
              });
        },
        itemCount: tasks.length);
  }
}
