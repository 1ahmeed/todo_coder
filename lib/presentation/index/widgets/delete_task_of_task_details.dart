import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:todo_coder/core/utils/responsive_font.dart';

import '../../../core/utils/app_color.dart';
import '../../../core/utils/app_images.dart';
import '../../../core/utils/app_strings.dart';
import '../../layout/create_category.dart';
import 'button_of_delete_task.dart';

class DeleteTaskOfTaskDetails extends StatelessWidget {
  const DeleteTaskOfTaskDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton(
            style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.transparent),
                splashFactory: NoSplash.splashFactory,
                padding: MaterialStatePropertyAll(EdgeInsets.zero)),
            onPressed: () {
              alertDialogOfDelete(context);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SvgPicture.asset(AppImages.delete),
                const SizedBox(
                  width: 11,
                ),
                const Text(
                  "Delete Task",
                  style: TextStyle(
                      fontFamily: AppStrings.fontFamily,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xffFF4949)),
                )
              ],
            )),
      ],
    );
  }
  void alertDialogOfDelete(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        elevation: 0,
        contentPadding: const EdgeInsets.only(top: 10),
        backgroundColor: const Color(0xff363636),
        shape: const OutlineInputBorder(borderSide: BorderSide.none),
        content: SizedBox(
           width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ///header of delete task
                const SizedBox(height: 3),
                const Text(
                  "Delete Task",
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: AppStrings.fontFamily,
                      fontWeight: FontWeight.bold,
                      color: AppColor.white),
                ),
                const SizedBox(height: 8),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Divider(),
                ),
                const SizedBox(height: 21),

                ///text ask to delete task
                 Column(
                   crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                     const SizedBox(width: double.infinity,),
                    Text(
                      "Are You sure you want to delete this task?",
                      style: TextStyle(
                          fontFamily: AppStrings.fontFamily,
                          fontSize: getResponsiveFontSize(context, fontSize: 15),
                          fontWeight: FontWeight.w500,
                          color: AppColor.white),
                    ),
                    Text(
                      ''' Task title : Do math homework''',
                      style: TextStyle(
                          fontFamily: AppStrings.fontFamily,
                          fontSize: getResponsiveFontSize(context, fontSize: 15),
                          fontWeight: FontWeight.w500,
                          color: AppColor.white),
                    ),
                  ],
                ),
                const SizedBox(height: 18),

                ///button to delete task
                const ButtonOfDeleteTask()
              ],
            ),
          ),
        ),
      ),
    );
  }

}

