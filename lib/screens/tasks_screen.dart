import 'package:flutter/material.dart';

import 'package:flutter_myapp/models/task_data.dart';
import 'package:flutter_myapp/widgets/tasks_list.dart';

import 'package:provider/provider.dart';
import './add_task_screen.dart';

class TaskScreen extends StatelessWidget {
  Widget buildButtomSheet(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white),
    );
  }

  @override
  Widget build(BuildContext context) {
    FloatingActionButton floatingActionButton2 = FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(Icons.add),
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) => AddTaskScreen((newTaskTitle) {
                    // setState(() {
                    //   tasks.add(Task(name: newTaskTitle));
                    // });
                    Navigator.pop(context);
                  }));
        });

    return Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        floatingActionButton: floatingActionButton2,
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(
                    top: 60.0, left: 30.0, right: 30.0, bottom: 0.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    CircleAvatar(
                      child: Icon(
                        Icons.list,
                        size: 30.0,
                        color: Colors.lightBlueAccent,
                      ),
                      radius: 30.0,
                      backgroundColor: Colors.white,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      "Todo's List",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30.0,
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      '${Provider.of<TaskData>(context).taskCount} Tasks',
                      style: TextStyle(color: Colors.white, letterSpacing: 1.2),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                    margin: EdgeInsets.only(top: 50),
                    padding: EdgeInsets.only(left: 15, right: 15),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            topRight: Radius.circular(20.0))),
                    child: TasksList()),
              )
            ]));
  }
}
