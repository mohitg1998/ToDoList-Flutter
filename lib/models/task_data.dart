import 'package:flutter/material.dart';
import 'package:to_do/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: "Go to the Gym Mohit"),
    Task(name: "You really need to GO"),
    Task(name: "OKKKKKK???"),
  ];

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
