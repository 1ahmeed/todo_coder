import 'package:flutter/material.dart';
import 'package:todo_coder/core/utils/app_color.dart';
import 'package:todo_coder/presentation/index/widgets/content_of_task_in_task_details.dart';
import 'package:todo_coder/presentation/index/widgets/delete_task_of_task_details.dart';
import 'package:todo_coder/presentation/index/widgets/edit_category_of_task_details.dart';
import 'package:todo_coder/presentation/index/widgets/edit_flags_of_task_details.dart';
import 'package:todo_coder/presentation/index/widgets/edit_sub_task_of_task_details.dart';
import 'package:todo_coder/presentation/index/widgets/edit_time_of_task_details.dart';
import 'package:todo_coder/presentation/index/widgets/header_of_task_details.dart';

import '../../core/utils/app_strings.dart';

class TaskDetailsPage extends StatefulWidget {
  const TaskDetailsPage({Key? key}) : super(key: key);

  @override
  State<TaskDetailsPage> createState() => _TaskDetailsPageState();
}

class _TaskDetailsPageState extends State<TaskDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       resizeToAvoidBottomInset: false,
      backgroundColor: AppColor.primaryColor,
      body: Padding(
        padding:
            const EdgeInsets.only(top: 60.0, right: 24, left: 24, bottom: 40),
        child: Column(
          children: [
            ///header of task details

            const HeaderOfTaskDetails(),
            const SizedBox(height: 30,
            ),

            ///content of task title subtitle radio button
            Expanded(
                flex:2,
                child: ContentOfTaskInTaskDetails()),
            const SizedBox(width: 30,),

            ///edit timer
            const EditTimeOfTaskDetails(),
            const SizedBox(height: 34,),
            ///edit category
            Expanded(child: EditCategoryOfTaskDetails()),
            const SizedBox(height: 34,),

            ///edit priority
            const Expanded(child: EditFlagsOfTaskDetails()),
            const SizedBox(
              height: 34,
                          ),

            ///edit subtask
            const Expanded(child: EditSubTaskOfTaskDetails()),
            const SizedBox(height: 34,),

            ///delete
            const Expanded(child: DeleteTaskOfTaskDetails()),

            ///button end task
             const Spacer(),
            Expanded(
              child: MaterialButton(
                height: 50,
                minWidth: double.infinity,
                color: AppColor.secondColor,
                onPressed: () {},
                child: const Text(
                  "End Task",
                  style: TextStyle(
                      color: AppColor.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      fontFamily: AppStrings.fontFamily),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
