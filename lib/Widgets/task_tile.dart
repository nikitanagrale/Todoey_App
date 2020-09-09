import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final Function checkBoxCallback;
  final String taskTitle;
  final Function longPressCallack;

  TaskTile(
      {this.isChecked,
      this.taskTitle,
      this.longPressCallack,
      this.checkBoxCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallack,
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkBoxCallback,
      ),
    );
  }
}
