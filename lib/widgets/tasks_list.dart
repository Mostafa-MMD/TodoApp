import 'package:flutter/material.dart';
import 'package:todo_app/model/task_data.dart';
import 'package:todo_app/widgets/task_tile.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {
  const TasksList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, tasksData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
              taskTile: tasksData.tasks[index].name,
              isChecked: tasksData.tasks[index].isDone,
              checkBoxChange: (newValue) {
                tasksData.upDataTask(tasksData.tasks[index]);
              },
              listTileDelete: () {
                tasksData.deleteTask(tasksData.tasks[index]);
              },
            );
          },
          itemCount: tasksData.tasks.length,
        );
      },
    );
  }
}
