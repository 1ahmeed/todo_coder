import 'package:flutter/material.dart';

import '../../../core/utils/app_color.dart';
import '../../../core/utils/app_strings.dart';

class ChooseCategoryIcon extends StatelessWidget {
  const ChooseCategoryIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Category icon :",
          style: TextStyle(
              fontFamily: AppStrings.fontFamily,
              color: AppColor.white,
              fontSize: 16,
              fontWeight: FontWeight.w400),
        ),
        const SizedBox(
          height: 16,
        ),
        InkWell(
          onTap: () {

            ///todo function choose icon from library
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: const Color(0xffFFFFFF).withOpacity(.21),
            ),
            child: const Text(
              "Choose icon from library",
              style: TextStyle(
                  fontFamily: AppStrings.fontFamily,
                  color: AppColor.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w400),
            ),
          ),
        ),
      ],
    );
  }
}