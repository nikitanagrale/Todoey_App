import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'task 1',
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: TaskCheckbox(
        checkBoxState: isChecked,
        toggleCheckBox: (bool checkBoxState) {
          setState(() {
            isChecked = checkBoxState;
          });
        },
      ),
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  final bool checkBoxState;
  final Function toggleCheckBox;

  TaskCheckbox({this.checkBoxState, this.toggleCheckBox});
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: checkBoxState,
      onChanged: toggleCheckBox,
    );
  }
}
