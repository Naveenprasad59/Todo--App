import 'package:flutter/material.dart';
import 'package:todoey/widgets/tasktile.dart';
import 'package:todoey/models/taskdata.dart';
import 'package:provider/provider.dart';
class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context,taskdata,child){
        return ListView.builder(
          itemBuilder: (context, index) {
            return Tasktile(
              title: taskdata.tasks[index].title,
              isChecked: taskdata.tasks[index].isDone,
              togglecheckBox: (bool currentstate) {
                taskdata.updatetask(taskdata.tasks[index]);
              },
              longpressCallback: (){
                taskdata.deletetask(taskdata.tasks[index]);
              },
            );
          },itemCount: taskdata.tasks.length,
        );
      },
    );
  }
}
