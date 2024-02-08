import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/utils/app_color.dart';
import '../../../core/utils/app_images.dart';
import '../../../core/utils/app_strings.dart';

class ActiveInactiveFlag extends StatelessWidget {
  const ActiveInactiveFlag({Key? key, required this.isChosen, required this.currentFlagSelected}) : super(key: key);
final bool isChosen;
final int currentFlagSelected;
  @override
  Widget build(BuildContext context) {
    return isChosen?
    Container(
      color:AppColor.secondColor,
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 6,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          SvgPicture.asset(
            AppImages.flagTaskPriority,
          ),
          const SizedBox(height: 6),
          ///number of flag
          Text(
            "${currentFlagSelected + 1}",
            style: const TextStyle(
                color: AppColor.white,
                fontWeight: FontWeight.w400,
                fontFamily: AppStrings.fontFamily,
                fontSize: 15),
            // style: theme.textTheme.bodyLarge,
          ),
        ],
      ),
    )
        :Container(
      color: const Color(0xff272727),
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 6,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          SvgPicture.asset(
            AppImages.flagTaskPriority,
          ),
          const SizedBox(height: 6),
          ///number of flag
          Text(
            "${currentFlagSelected + 1}",
            style: const TextStyle(
                color: AppColor.white,
                fontWeight: FontWeight.w400,
                fontFamily: AppStrings.fontFamily,
                fontSize: 15),
            // style: theme.textTheme.bodyLarge,
          ),
        ],
      ),
    );
  }
}



