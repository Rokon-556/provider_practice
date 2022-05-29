import 'dart:collection' ;

import 'package:flutter/foundation.dart';
import 'package:todo_flutter/models/task.dart';

class TaskData extends ChangeNotifier{
  final List<Task> _tasks = [
    Task(taskName: 'Buy Milk'),
    Task(taskName: 'Buy Fruits' ),
    Task(taskName: 'Buy Medicine' )
  ];

  UnmodifiableListView<Task> get tasks{
    return UnmodifiableListView(_tasks);
  }

  int get taskCount{
    return _tasks.length;
  }

  void addTask(String newTaskTitle){
    final task=Task(taskName: newTaskTitle);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task){
    task.toggleBox();
    notifyListeners();
  }
  void removeTask(Task task){
    _tasks.remove(task);
    notifyListeners();
  }


}