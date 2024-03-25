import 'package:flutter/material.dart';

class ListItemWidget extends StatelessWidget {
  final String title;
  final Icon icon;
  final int numberOfTask;
  final Function()? onTap;

  const ListItemWidget({
    super.key,
    required this.title,
    required this.icon,
    required this.numberOfTask,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: ListTile(
        leading: icon,
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        trailing: Text(
          numberOfTask.toString(),
          style: const TextStyle(fontSize: 15),
        ),
      ),
    );
  }
}
