import 'package:dependencies/dependencies.dart';
import 'package:flutter/material.dart';
import 'package:core/utils/colors.dart';

import '../widgets/tasks_app_bar.dart';
import '../widgets/tasks_widget.dart';

class TasksPage extends StatelessWidget {
  const TasksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      floatingActionButton: _buildFloatingActionButton(),
      body: const TasksWidget(),
    );
  }

  FloatingActionButton _buildFloatingActionButton() {
    return FloatingActionButton(
      onPressed: () {},
      backgroundColor: myPrimaryColor,
      child: const Icon(Icons.add),
    );
  }

  PreferredSize _buildAppBar() {
    return PreferredSize(
      preferredSize: const Size(double.infinity, 50),
      child: TasksAppBar(
        onBackPressed: () => Modular.to.pop(),
        onMorePressed: () {},
      ),
    );
  }
}
