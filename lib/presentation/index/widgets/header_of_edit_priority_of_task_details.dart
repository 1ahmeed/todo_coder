import 'package:flutter/material.dart';
import 'package:todo_coder/core/utils/app_color.dart';
import 'package:todo_coder/core/utils/app_strings.dart';

class HeaderOfEditPriorityOfTaskDetails extends StatelessWidget {
  const HeaderOfEditPriorityOfTaskDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 3),
        Text(
          "Task Priority",
          style: TextStyle(
              fontSize: 16,
              fontFamily: AppStrings.fontFamily,
              fontWeight: FontWeight.bold,
              color: AppColor.white),
        ),
        SizedBox(height: 8),
        Divider(),
      ],
    );
  }
}
