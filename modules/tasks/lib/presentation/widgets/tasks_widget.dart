import 'package:core/utils/colors.dart';
import 'package:flutter/material.dart';

import 'task_item_widget.dart';

class TasksWidget extends StatelessWidget {
  const TasksWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          const ListTile(
            leading: Icon(
              Icons.list,
              size: 40,
              color: myPrimaryColor,
            ),
            title: Text(
              'New List',
              style: TextStyle(fontSize: 24),
            ),
          ),
          const Divider(
            color: myPrimaryColor,
            height: 2,
          ),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) {
                return const Divider(
                  color: Colors.grey,
                  height: 2,
                );
              },
              itemCount: 6,
              itemBuilder: (context, index) {
                return TaskItemWidget(
                  onTap: () {},
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
