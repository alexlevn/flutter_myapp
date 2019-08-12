import 'package:flutter/material.dart';
import 'package:flutter_myapp/models/task_data.dart';
import 'package:provider/provider.dart';
import './task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskData, child) {
      return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
                name: taskData.tasks[index].name,
                isChecked: taskData.tasks[index].isDone,
                checkBoxCallback: (checkBoxState) {
                  // setState(() {
                  //   taskData.tasks[index].toggleDone();
                  // });
                });
          },
          itemCount: taskData.taskCount);
    });
  }
}
