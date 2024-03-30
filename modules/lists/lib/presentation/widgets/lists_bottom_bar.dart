import 'package:flutter/material.dart';
import 'package:core/utils/colors.dart';

import 'add_new_list_dialog_widget.dart';

class ListsBottomBar extends StatelessWidget {
  const ListsBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: const EdgeInsets.only(right: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: InkWell(
              onTap: () {
                _buildAddNewListDialog(context);
              },
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                margin: const EdgeInsets.symmetric(horizontal: 16),
                height: 50,
                child: const Row(
                  children: [
                    Icon(
                      Icons.add,
                      size: 30,
                      color: myPrimaryColor,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      child: Text(
                        'Add new list',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.edit,
              size: 30,
              color: myPrimaryColor,
            ),
          ),
        ],
      ),
    );
  }

  void _buildAddNewListDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return const Dialog(
          insetPadding: EdgeInsets.symmetric(horizontal: 16),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
          child: AddNewListDialogWidget(),
        );
      },
    );
  }
}
