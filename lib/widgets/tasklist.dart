import 'package:flutter/material.dart';
import 'package:todoey_to_do_list/widgets/tasktile.dart';
import 'package:provider/provider.dart';
import 'package:todoey_to_do_list/models/task_data.dart';

class taskslist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<taskdata>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return tasktile(
              task.isdone,
              task.name,
              (checkboxstate) {
                taskData.updatetask(task);
              },
              () {
                taskData.deletetask(task);
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
