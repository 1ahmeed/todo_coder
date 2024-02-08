import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/utils/app_color.dart';
import '../../../core/utils/app_images.dart';
import '../../../core/utils/app_strings.dart';

///todo screen if no data
class ScreenIfNoData extends StatelessWidget {
  const ScreenIfNoData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(
            height: 75,
          ),
          SvgPicture.asset(AppImages.emptyHome),
          const SizedBox(height: 50),
          const Text(
            "What do you want to do today?",
            style: TextStyle(
                color: AppColor.white,
                fontSize: 20,
                fontFamily: AppStrings.fontFamily,
                fontWeight: FontWeight.w400),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "Tap + to add your tasks",
            style: TextStyle(
                color: AppColor.white.withOpacity(.8),
                fontSize: 16,
                fontFamily: AppStrings.fontFamily,
                fontWeight: FontWeight.w400),
          )
        ],
      ),
    );
  }
}
