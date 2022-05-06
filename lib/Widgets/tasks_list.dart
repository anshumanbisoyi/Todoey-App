import 'package:flutter/material.dart';
import 'package:todoey_app/Widgets/tasks_tile.dart';
import 'package:provider/provider.dart';
import 'package:todoey_app/models/task_data.dart';

class TaskList extends StatelessWidget {
  // late final List<Task> tasks; //that refers to this property
  // TaskList(this.tasks);
  // dynamic CheckboxCallback(bool? newValue) {
  //   setState(() {
  //     isChecked = newValue!;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskData, child) {
      return ListView.builder(
        itemCount: taskData.taskCount,
        itemBuilder: (context, index) {
          //dynamicListViewBuilder: ready to build infinite tasks
          final task = taskData.tasks[index];
          return TaskTile(
            isChecked: taskData.tasks[index].isDone,
            taskTitle: taskData.tasks[index].name,
            checkboxCallback: (checkboxState) {
              taskData.updateTask(task);
            },
            longPressCallback: () {
              taskData.deleteTask(task);
            },
          );
        },
      );
    });
  }
}
