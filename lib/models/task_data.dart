import 'dart:collection';

import 'package:flutter/foundation.dart';
import './task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'Read the two declarations!'),
    Task(name: 'Determine what you want..'),
    Task(name: 'Visualization in 10 minutes.'),
    Task(name: 'Visualization in 1 minutes.'),
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  void addTask(newTaskTitle) {
    final Task task = Task(name: newTaskTitle);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }
}
