import 'package:flutter/material.dart';

import '../widgets/lists_app_bar_widget.dart';
import '../widgets/lists_bottom_bar_widget.dart';
import '../widgets/lists_widget.dart';

class ListsPage extends StatelessWidget {
  const ListsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: ListsAppBarWidget(),
      bottomNavigationBar: ListsBottomBarWidget(),
      body: ListsWidget(),
    );
  }
}
