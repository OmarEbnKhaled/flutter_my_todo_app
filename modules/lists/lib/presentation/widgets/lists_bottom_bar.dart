import 'package:flutter/material.dart';
import 'package:core/utils/colors.dart';

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
              onTap: () {},
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
}
