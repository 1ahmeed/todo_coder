import 'package:flutter/material.dart';

import '../../../core/utils/app_color.dart';
import '../../../core/utils/app_strings.dart';

class HeaderOfEditTaskOfTaskDetails extends StatelessWidget {
  const HeaderOfEditTaskOfTaskDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(width: MediaQuery.of(context).size.width),
        const SizedBox(height: 3),
        const Text(
          "Edit Task",
          style: TextStyle(
              fontSize: 16,
              fontFamily: AppStrings.fontFamily,
              fontWeight: FontWeight.bold,
              color: AppColor.white),
        ),
        const SizedBox(height: 8),
        const Divider(),
      ],
    );
  }
}
