import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkboxCallback;
  final Function longPRessCallback;

  TaskTile(this.taskTitle, this.isChecked, this.checkboxCallback,
      this.longPRessCallback);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPRessCallback,
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}
