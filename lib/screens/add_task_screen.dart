import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {

  final Function addTaskCallback;

  AddTaskScreen(this.addTaskCallback);

  @override
  Widget build(BuildContext context) {
    String newTaskTitle;

    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.only(top: 30.0, left: 40, right: 40),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Add Tast',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 28,
                  color: Colors.lightBlueAccent,
                  fontWeight: FontWeight.w500),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25),
              onChanged: (newText) {
                newTaskTitle = newText;
              },
            ),
            FlatButton(
              onPressed: () {
                addTaskCallback(newTaskTitle);
              },
              color: Colors.lightBlueAccent,
              child: Text(
                'Add',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
