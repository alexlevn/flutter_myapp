import 'package:flutter/material.dart';
import 'package:flutter_myapp/models/task_data.dart';
import './screens/tasks_screen.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        builder: (context) => TaskData(),
        child: MaterialApp(home: TaskScreen()));
  }
}
