import 'package:flutter/foundation.dart';
import 'package:todoey/models/task.dart';
import 'dart:collection';
class TaskData extends ChangeNotifier{
  List<Task> _tasks = [
    Task(title: 'First Task'),
    Task(title: 'Second Task'),
    Task(title: 'Third Task'),
  ];

  UnmodifiableListView <Task> get tasks{
    return UnmodifiableListView(_tasks);
  }

  int get taskLength{
    return _tasks.length;
  }

  void addtask(String taskname){
    final task = Task(title: taskname);
    _tasks.add(task);
    notifyListeners();
  }

  void updatetask(Task task){
    task.toggleDone();
    notifyListeners();
  }

  void deletetask(Task task){
    _tasks.remove(task);
    notifyListeners();
  }
}