import 'package:flutter/material.dart';

import '../../../core/utils/app_color.dart';
import '../../../core/utils/app_strings.dart';

class ButtonsOfEditTaskOfTaskDetails extends StatelessWidget {
  const ButtonsOfEditTaskOfTaskDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.only(
        left: 48,
        right: 1,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ///cancel task priority
          Padding(
            padding: const EdgeInsets.only(
              top: 14,
              bottom: 13,
            ),
            child: InkWell(
              splashFactory: NoSplash.splashFactory,
              onTap: () {
                Navigator.pop(context);
              },
              child: const Text(
                "Cancel",
                style: TextStyle(
                    fontSize: 18,
                    fontFamily: AppStrings.fontFamily,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff8687E7)),
              ),
            ),
          ),

          ///save button
          MaterialButton(
            elevation: 0,
            color: const Color(0xff8687E7),
            onPressed: () {},
            child: const Text(
              "Edit",
              style: TextStyle(
                  color: AppColor.white,
                  fontWeight: FontWeight.w400,
                  fontFamily: AppStrings.fontFamily,
                  fontSize: 16),
            ),
          )
        ],
      ),
    );
  }
}
