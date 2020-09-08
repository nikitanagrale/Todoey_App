import 'package:flutter/foundation.dart';
import 'package:todoey_flutter/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Do soe work'),
    Task(name: 'Do soe work'),
    Task(name: 'Do soe work'),
  ];

  int get taskCount {
    return tasks.length;
  }
}
