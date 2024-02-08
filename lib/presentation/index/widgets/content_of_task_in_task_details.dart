import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:todo_coder/core/utils/responsive_font.dart';

import '../../../core/utils/app_color.dart';
import '../../../core/utils/app_images.dart';
import '../../../core/utils/app_strings.dart';
import 'buttons_of_edit_task_of_task_details.dart';
import 'header_of_edit_task_of_task_details.dart';
import 'inputs_to_edit_task.dart';

class ContentOfTaskInTaskDetails extends StatelessWidget {
   ContentOfTaskInTaskDetails({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
       Row(
         mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding:  EdgeInsets.only(bottom: MediaQuery.of(context).size.height*.07),
            child: const CircleAvatar(
              radius: 12,
              backgroundColor: AppColor.white,
              child: CircleAvatar(
                radius: 11,
                backgroundColor: Color(0xff363636),
              ),
            ),
          ),
          const SizedBox(
            width: 21,
          ),
          ///title of task and subtitle
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Do Math Homework",
                style: TextStyle(
                    color: AppColor.white,
                    fontWeight: FontWeight.w400,
                    fontSize: getResponsiveFontSize(context, fontSize: 20),
                    fontFamily: AppStrings.fontFamily),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Do chapter 2 to 5 for next week",
                style: TextStyle(
                    color: const Color(0xffAFAFAF),
                    fontWeight: FontWeight.w400,
                    fontSize:getResponsiveFontSize(context, fontSize:16) ,
                    fontFamily: AppStrings.fontFamily),
              ),
            ],
          ),
          const Expanded(
            child:  SizedBox(
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(bottom: MediaQuery.of(context).size.height*.08),
            child: InkWell(
              onTap: () {
                alertDialogOfEditTask(context);
              },
              child: SizedBox(
                width: 30,
                height: 30,
                child: Center(
                    child: SvgPicture.asset(
                      AppImages.edit,
                      width: 30,
                      height: 50,
                    )),
              ),
            ),
          )
        ],
      ),
    ]);
  }
  void alertDialogOfEditTask(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        elevation: 0,
        backgroundColor: const Color(0xff363636),
        shape: const OutlineInputBorder(borderSide: BorderSide.none),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ///header of edit task

            const HeaderOfEditTaskOfTaskDetails(),
            const SizedBox(height: 21),

            ///inputs title discrebtion
            InputsToEditTask(),

            const SizedBox(
              height: 35,
            ),
            ///buttons edit cancel
            const ButtonsOfEditTaskOfTaskDetails()
          ],
        ),
      ),
    );
  }

}

