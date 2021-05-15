import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/models/task_data.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function(bool?) toggleCheckBox;
  final Function() longPressCheckBox;

  TaskTile(
      {required this.taskTitle,
      required this.isChecked,
      required this.toggleCheckBox,
      required this.longPressCheckBox});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: toggleCheckBox,
      ),
      onLongPress: longPressCheckBox,
      onTap: () {
        Fluttertoast.showToast(
            msg: "do long press for delete Task",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor:
                Provider.of<TaskData>(context, listen: false).colorTask,
            textColor: Colors.white54,
            fontSize: 16.0);
      },
    );
  }
}
