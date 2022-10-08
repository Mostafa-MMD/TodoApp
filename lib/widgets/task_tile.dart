import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String taskTile;
  final bool isChecked;
  final void Function(bool?) checkBoxChange;
  final void Function() listTileDelete;

  const TaskTile({
    Key? key,
    required this.isChecked,
    required this.taskTile,
    required this.checkBoxChange,
    required this.listTileDelete,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTile,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.teal[400],
        value: isChecked,
        onChanged: checkBoxChange,
      ),
      onLongPress: listTileDelete,
    );
  }
}

/*

(bool? newValue) {
          setState(() {
            isChecked = newValue!;
          });
        },

 */
