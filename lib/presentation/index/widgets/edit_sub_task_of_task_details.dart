import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:todo_coder/core/utils/app_images.dart';

import '../../../core/utils/app_color.dart';
import '../../../core/utils/app_strings.dart';

class EditSubTaskOfTaskDetails extends StatelessWidget {
  const EditSubTaskOfTaskDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        SvgPicture.asset(AppImages.subTask),
        const SizedBox(
          width: 8,
        ),
        const Text(
          "Sub - Task :",
          style: TextStyle(
              fontFamily: AppStrings.fontFamily,
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: AppColor.white),
        ),
        const Spacer(),
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: const Color(0xffFFFFFF).withOpacity(.30),
          ),
          child: MaterialButton(
              padding: EdgeInsets.zero,
              onPressed: () {
                ///todo navigation of category in item task
              },
              child: const Text(
                "Add Sub -Task",
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
}
