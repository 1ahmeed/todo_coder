import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/utils/app_color.dart';
import '../../../core/utils/app_images.dart';
import '../../../core/utils/app_strings.dart';
import '../../../models/category_model.dart';
import '../../layout/create_category.dart';
import 'buttons_of_edit_category_of_task_details.dart';
import 'category_list_view_of_task_details.dart';
import 'header_of_edit_category_of_task_details.dart';

class EditCategoryOfTaskDetails extends StatelessWidget {
   EditCategoryOfTaskDetails({Key? key}) : super(key: key);

  final List<CategoryModel> categories = [
    CategoryModel(
      title: "Grocery",
      image: AppImages.grocery,
    ),
    CategoryModel(
      title: "work",
      image: AppImages.work,
    ),
    CategoryModel(
      title: "sport",
      image: AppImages.sport,
    ),
    CategoryModel(
      title: "design",
      image: AppImages.xo,
    ),
    CategoryModel(
      title: "university",
      image: AppImages.university,
    ),
    CategoryModel(
      title: "social",
      image: AppImages.social,
    ),
    CategoryModel(
      title: "music",
      image: AppImages.music,
    ),
    CategoryModel(
      title: "health",
      image: AppImages.health,
    ),
    CategoryModel(
      title: "movie",
      image: AppImages.movie,
    ),
    CategoryModel(
      title: "home",
      image: AppImages.home,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        SvgPicture.asset(AppImages.tag),
        const SizedBox(
          width: 8,
        ),
        const Text(
          "Task Of Category :",
          style: TextStyle(
              fontFamily: AppStrings.fontFamily,
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: AppColor.white),
        ),
        const Spacer(),
        Container(
          width: 130,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: const Color(0xffFFFFFF).withOpacity(.30),
          ),
          child: MaterialButton(
              padding: EdgeInsets.zero,
              onPressed: () {
                alertDialogOfTags(context);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Center(
                      child: SvgPicture.asset(
                        AppImages.university,
                        width: 25,
                        height: 25,
                      )),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text(
                    "University",
                    style: TextStyle(
                        color: AppColor.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        fontFamily: AppStrings.fontFamily),
                  )
                ],
              )),
        ),
      ],
    );
  }
  void alertDialogOfTags(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        elevation: 0,
        contentPadding: const EdgeInsets.only(top: 10),
        backgroundColor: const Color(0xff363636),
        shape: const OutlineInputBorder(borderSide: BorderSide.none),
        content: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ///Header Of Edit Category Of Task Details
                const HeaderOfEditCategoryOfTaskDetails(),
                const SizedBox(height: 21),
                ///items of category
                CategoriesListViewOfTAskDetails(),
                const SizedBox(height: 18),

                ///button to add category
                const ButtonsOfEditCategoryOfTaskDetails()
              ],
            ),
          ),
        ),
      ),
    );
  }
}


