
import 'package:flutter/material.dart';

import '../../../core/utils/app_color.dart';
import '../../../core/utils/app_strings.dart';
import 'colors_category_ist_view.dart';

class ChooseCategoryColor extends StatelessWidget {
  const ChooseCategoryColor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Category color :",
          style: TextStyle(
              fontFamily: AppStrings.fontFamily,
              color: AppColor.white,
              fontSize: 16,
              fontWeight: FontWeight.w400),
        ),
        SizedBox(
          height: 20,
        ),
        ColorsListView(),
      ],
    );
  }
}
