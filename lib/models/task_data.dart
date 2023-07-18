// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoey_to_do_list/models/tasks.dart';
import 'package:collection/collection.dart';

class taskdata extends ChangeNotifier {
  List<task> tasks = [
    task(name: 'buy milk'),
    task(name: 'task2'),
  ];
  int get taskCount {
    return tasks.length;
  }

  void addtask(String newtasktitle) {
    final local_task = task(name: newtasktitle);
    tasks.add(local_task);
    notifyListeners();
  }

  void updatetask(task l_task) {
    l_task.toggledone();
    notifyListeners();
  }

  void deletetask(task l_task) {
    tasks.remove(l_task);
    notifyListeners();
  }
}
