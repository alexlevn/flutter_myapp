import 'package:flutter/foundation.dart';
import './task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Read the two declarations!'),
    Task(name: 'Determine what you want..'),
    Task(name: 'Visualization in 10 minutes.'),
    Task(name: 'Visualization in 1 minutes.'),
  ];

  int get taskCount {
    return tasks.length;
  }
}
