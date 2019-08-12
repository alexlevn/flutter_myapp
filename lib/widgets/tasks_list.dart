import 'package:flutter/material.dart';
import 'package:flutter_myapp/models/task.dart';
import 'package:flutter_myapp/models/task_data.dart';
import 'package:provider/provider.dart';
import './task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskData, child) {
      return ListView.builder(
          itemBuilder: (context, index) {
            final Task task = taskData.tasks[index];
            return TaskTile(
                name: task.name,
                isChecked: task.isDone,
                checkBoxCallback: (checkBoxState) {
                  taskData.updateTask(task);
                });
          },
          itemCount: taskData.taskCount);
    });
  }
}
