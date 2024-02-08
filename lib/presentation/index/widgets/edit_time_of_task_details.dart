import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/utils/app_color.dart';
import '../../../core/utils/app_images.dart';
import '../../../core/utils/app_strings.dart';

class EditTimeOfTaskDetails extends StatelessWidget {
  const EditTimeOfTaskDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(AppImages.timer),
        const SizedBox(
          width: 8,
        ),
        const Text(
          "Task Time :",
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
            onPressed: () {
              alertDialogOfEditTime(context);
            },
            child: const Text(
              "Today At 16:45",
              style: TextStyle(
                  color: AppColor.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  fontFamily: AppStrings.fontFamily),
            ),
          ),
        )
      ],
    );
  }
  void alertDialogOfEditTime(BuildContext context) {
    showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime.now(),
        lastDate: DateTime.parse('2070-12-02'));
  }
}
