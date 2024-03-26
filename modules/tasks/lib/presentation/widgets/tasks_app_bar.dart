import 'package:core/utils/colors.dart';
import 'package:flutter/material.dart';

class TasksAppBar extends StatelessWidget {
  final Function()? onBackPressed;
  final Function()? onMorePressed;
  
  const TasksAppBar({
    super.key,
    this.onBackPressed,
    this.onMorePressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: EdgeInsets.only(
        top: MediaQuery.of(context).viewPadding.top,
        left: 8,
        right: 8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: onBackPressed,
            icon: const Icon(
              Icons.arrow_back,
              size: 32,
              color: myPrimaryColor,
            ),
          ),
          IconButton(
            onPressed: onMorePressed,
            icon: const Icon(
              Icons.more_vert,
              color: myPrimaryColor,
              size: 32,
            ),
          ),
        ],
      ),
    );
  }
}
