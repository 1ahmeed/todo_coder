import 'package:flutter/material.dart';
import 'package:todo_coder/core/utils/app_strings.dart';

import '../../../core/utils/app_color.dart';

class ButtonsOfCreateNewCategory extends StatelessWidget {
  const ButtonsOfCreateNewCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.end,
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
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12,),
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
        ),
        const SizedBox(
          width: 20,
        ),

        ///save button
        MaterialButton(
          elevation: 0,
          color: const Color(0xff8687E7),
          onPressed: () {
            ///todo create category
          },
          child: const Text(
            "Create Category",
            style: TextStyle(
                color: AppColor.white,
                fontWeight: FontWeight.w400,
                fontFamily: AppStrings.fontFamily,
                fontSize: 16),
          ),
        )
      ],
    );
  }
}
