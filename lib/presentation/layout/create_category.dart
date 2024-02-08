import 'package:flutter/material.dart';
import 'package:todo_coder/core/utils/app_color.dart';
import 'package:todo_coder/core/utils/app_strings.dart';
import 'package:todo_coder/presentation/layout/widget/button_of_create_new_category.dart';
import 'package:todo_coder/presentation/layout/widget/choose_category_color.dart';
import 'package:todo_coder/presentation/layout/widget/choose_category_icon.dart';
import 'package:todo_coder/presentation/layout/widget/input_category_name.dart';

class CreateCategory extends StatelessWidget {
  const CreateCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      body: Padding(
        padding:
            const EdgeInsets.only(top: 60.0, bottom: 60, right: 24, left: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///title
            const Text(
              "Create new category",
              style: TextStyle(
                  fontFamily: AppStrings.fontFamily,
                  color: AppColor.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            ///input category name
            InputCategoryName(),
            const SizedBox(
              height: 20,
            ),
            ///choose category icon
            const ChooseCategoryIcon(),
            const SizedBox(
              height: 20,
            ),
            ///choose category color
            const ChooseCategoryColor(),
            const Spacer(),
            ///buttons save cancel
            const ButtonsOfCreateNewCategory()
          ],
        ),
      ),
    );
  }
}





