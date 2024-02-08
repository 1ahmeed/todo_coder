import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:todo_coder/core/utils/app_color.dart';
import 'package:todo_coder/core/utils/app_images.dart';
import 'package:todo_coder/core/utils/app_strings.dart';

import '../../../models/on_boarding_model.dart';

class BuildBoardingItem extends StatelessWidget {
  const BuildBoardingItem(
      {super.key,
      this.boardingModel,
      required this.numOfSlides,
      required this.currentSlide});

  final BoardingModel? boardingModel;
  final int numOfSlides;
  final int currentSlide;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(flex:8,child: SvgPicture.asset(boardingModel!.image)),
        const SizedBox(
          height: 52,
        ),

        ///indicator
        Expanded(
          flex: 1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < numOfSlides; i++)
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: _getActiveIndicator(indexOfIndicator: i, currentSlide),
                ),
            ],
          ),
        ),

        ///text
        Expanded(
          flex: 3,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                boardingModel!.title,
                style: const TextStyle(
                  fontSize: 32,
                  fontFamily: AppStrings.fontFamily,
                  color: AppColor.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 42,
        ),

        ///body text of On boarding
        Expanded(
          flex: 1,
          child: Text(
            boardingModel!.body,
            style: const TextStyle(
              fontSize: 16,
              color: AppColor.white,
              fontFamily: AppStrings.fontFamily,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        Expanded(flex: 1,
          child: Text(
            boardingModel!.body2,
            style: const TextStyle(
              fontSize: 16,
              fontFamily: AppStrings.fontFamily,
              color: AppColor.white,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }

  ///select active indicator
  Widget _getActiveIndicator(int currentSlide, {int? indexOfIndicator}) {
    if (indexOfIndicator == currentSlide) {
      return SizedBox(
          child: SvgPicture.asset(
        AppImages.activeIndicator,
      ));
    } else {
      return SizedBox(
          child: SvgPicture.asset(
        AppImages.inactiveIndicator,
      ));
    }
  }
}
