import 'package:flutter/material.dart';
import 'package:flutter_myapp/models/task_data.dart';
import 'package:provider/provider.dart';
import './task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (context, index) {
          return TaskTile(
              name: Provider.of<TaskData>(context).tasks[index].name,
              isChecked: Provider.of<TaskData>(context).tasks[index].isDone,
              checkBoxCallback: (checkBoxState) {
                // setState(() {
                //   Provider.of<TaskData>(context).tasks[index].toggleDone();
                // });
              });
        },
        itemCount: Provider.of<TaskData>(context).tasks.length);
  }
}
