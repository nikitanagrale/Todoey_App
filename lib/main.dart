import 'package:flutter/material.dart';
import 'package:todoey_flutter/Screens/task_screen.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_data.dart';

void main() {
  runApp(TodoeyApp());
}

class TodoeyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) {
        TaskData();
      },
      child: MaterialApp(
        home: TaskScreen(),
      ),
    );
  }
}
