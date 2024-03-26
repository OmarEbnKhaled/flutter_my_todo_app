import 'package:flutter/material.dart';

class TaskItemWidget extends StatefulWidget {
  final Function()? onTap;
  const TaskItemWidget({
    super.key,
    this.onTap,
  });

  @override
  State<TaskItemWidget> createState() => _TaskItemWidgetState();
}

class _TaskItemWidgetState extends State<TaskItemWidget> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Checkbox(
        value: isChecked,
        onChanged: (value) {
          setState(() {
            isChecked = value!;
          });
        },
      ),
      title: const Text(
        'New Task',
        style: TextStyle(fontSize: 18),
      ),
      trailing: const Icon(
        Icons.star,
        size: 32,
        color: Colors.yellow,
      ),
      onTap: () {
        setState(() {
          isChecked = !isChecked;
        });
      },
    );
  }
}
