import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [];

  int get taskCount {
    return tasks.length;
  }

  void setNewTask(String userTask) {
    final value = Task(name: userTask);
    tasks.add(value);
    notifyListeners();
  }

  Color value = Colors.teal;
  void setColorTask(Color userColor) {
    value = userColor;
    notifyListeners();
  }

  Color get colorTask {
    return value;
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
