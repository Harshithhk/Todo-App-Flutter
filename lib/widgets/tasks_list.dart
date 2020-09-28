import 'package:flutter/material.dart';
import 'tasks_tile.dart';
import 'package:provider/provider.dart';
import 'package:todoflutterapp/models/task_data.dart';

class TaskList extends StatelessWidget {
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
                taskData.tasks[index].name, taskData.tasks[index].isDone,
                (checkboxState) {
              taskData.updateTask(taskData.tasks[index]);
            }, () {
              taskData.deleteTask(taskData.tasks[index]);
            });
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
