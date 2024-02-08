
import 'package:flutter/material.dart';

import '../../../core/utils/app_color.dart';
import '../../../core/utils/app_strings.dart';

class HeaderOfEditCategoryOfTaskDetails extends StatelessWidget {
  const HeaderOfEditCategoryOfTaskDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 3),
        Text(
          "Choose Category",
          style: TextStyle(
              fontSize: 16,
              fontFamily: AppStrings.fontFamily,
              fontWeight: FontWeight.bold,
              color: AppColor.white),
        ),
        SizedBox(height: 8),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Divider(),
        ),
      ],
    );
  }
}

