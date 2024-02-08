import 'package:flutter/material.dart';

import '../../../core/utils/app_color.dart';
import '../../../core/utils/app_strings.dart';

class ButtonFilterCompleteTask extends StatelessWidget {
  const ButtonFilterCompleteTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        ///todo function
      },
      child: Container(
        // margin: const EdgeInsets.only(right: 260),
        padding: const EdgeInsets.all(12),
        decoration: ShapeDecoration(
          color: const Color(0xffFFFFFF).withOpacity(.21),
          shape: RoundedRectangleBorder(
              side: BorderSide.none,
              borderRadius: BorderRadius.circular(6)),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Complete',
              style: TextStyle(
                  color: AppColor.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  fontFamily: AppStrings.fontFamily),
            ),
            const SizedBox(
              width: 9,
            ),
            Transform.rotate(
                angle: -1.57079632,
                child: const Icon(
                  Icons.arrow_back_ios_new_outlined,
                  color: AppColor.white,
                  size: 16,
                )),
          ],
        ),
      ),
    );
  }
}
