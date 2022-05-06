import 'package:flutter/foundation.dart';
import 'package:todoey_app/models/task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy lays'),
  ];

  // UnmodifiableListView<Task> get tasks {
  //   return UnmodifiableListView(_tasks);
  // }

  int get taskCount {
    return tasks.length;
  }

  void addTask(String newTaskTitle) {
    final task = Task(name: newTaskTitle);
    tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    tasks.remove(task);
    notifyListeners();
  }
}
