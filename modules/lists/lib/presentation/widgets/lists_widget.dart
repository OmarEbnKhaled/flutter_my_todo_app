import 'package:core/utils/colors.dart';
import 'package:dependencies/dependencies.dart';
import 'package:flutter/material.dart';

import 'list_Item_widget.dart';

class ListsWidget extends StatelessWidget {
  const ListsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return ListItemWidget(
        title: 'New List',
        icon: const Icon(
          Icons.list,
          color: myPrimaryColor,
        ),
        numberOfTask: 2,
        onTap: () {
          Modular.to.pushNamed('/tasks');
        },
      );
    });
  }
}
