import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/utils/app_color.dart';
import '../../../core/utils/app_images.dart';
import '../../../core/utils/app_strings.dart';
import 'buttons_of_edit_priority_of_task_details.dart';
import 'flag_list_view_of_task_details.dart';
import 'header_of_edit_priority_of_task_details.dart';

class EditFlagsOfTaskDetails extends StatelessWidget {
  const EditFlagsOfTaskDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(AppImages.flagTaskPriority),
        const SizedBox(
          width: 8,
        ),
        const Text(
          "Task Priority :",
          style: TextStyle(
              fontFamily: AppStrings.fontFamily,
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: AppColor.white),
        ),
        const Spacer(),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: const Color(0xffFFFFFF).withOpacity(.30),
          ),
          child: MaterialButton(
              padding: EdgeInsets.zero,
              onPressed: () {
                alertDialogOfFlags(context);
              },
              child: const Text(
                "default",
                style: TextStyle(
                    color: AppColor.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    fontFamily: AppStrings.fontFamily),
              )),
        ),
      ],
    );
  }
  void alertDialogOfFlags(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => const AlertDialog(
        elevation: 0,
        backgroundColor: Color(0xff363636),
        shape: OutlineInputBorder(borderSide: BorderSide.none),
        content: SizedBox(
          width: 327,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ///header of edit priority of task details
                HeaderOfEditPriorityOfTaskDetails(),
                SizedBox(height: 21),

                ///items of flag
                FlagListViewOfTaskDetails(),
                SizedBox(height: 18),

                ///buttons
                ButtonsOfEditPriorityOfTaskDetails()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

