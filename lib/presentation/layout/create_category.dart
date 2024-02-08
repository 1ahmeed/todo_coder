import 'package:flutter/material.dart';
import 'package:todo_coder/core/utils/app_color.dart';
import 'package:todo_coder/core/utils/app_strings.dart';
import 'package:todo_coder/presentation/layout/widget/colors_category_ist_view.dart';

class CreateCategory extends StatelessWidget {
  CreateCategory({Key? key}) : super(key: key);
  final categoryNameController = TextEditingController();

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
            ///field to add category name
            const Text(
              "Category name :",
              style: TextStyle(
                  fontFamily: AppStrings.fontFamily,
                  color: AppColor.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 16,
            ),
            TextFormField(
              controller: categoryNameController,
              keyboardType: TextInputType.text,
              validator: (value) {
                if (value!.trim().isEmpty) {
                  return "Please Enter Your category name";
                } else {
                  return null;
                }
              },
              style: const TextStyle(
                color: AppColor.white,
                fontFamily: AppStrings.fontFamily,
              ),
              cursorColor: AppColor.white,
              decoration: const InputDecoration(
                fillColor: Color(0xff1D1D1D),
                filled: true,
                floatingLabelBehavior: FloatingLabelBehavior.never,
                labelText: "Category name",
                labelStyle: TextStyle(
                    fontSize: 16,
                    fontFamily: AppStrings.fontFamily,
                    fontWeight: FontWeight.w400,
                    color: Color(0xffAFAFAF)),
                errorBorder: OutlineInputBorder(borderSide: BorderSide.none),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff979797))),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff979797))),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ///choose category icon
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
            const SizedBox(
              height: 20,
            ),
            ///choose category color
            const Text(
              "Category color :",
              style: TextStyle(
                  fontFamily: AppStrings.fontFamily,
                  color: AppColor.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 20,
            ),
            const ColorsListView(),
            const Spacer(),

            ///buttons save cancel
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ///cancel task priority
                Padding(
                  padding: const EdgeInsets.only(
                    top: 14,
                    bottom: 13,
                  ),
                  child: InkWell(
                    splashFactory: NoSplash.splashFactory,
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 12,),
                      child: const Text(
                        "Cancel",
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: AppStrings.fontFamily,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff8687E7)),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),

                ///save button
                MaterialButton(
                  elevation: 0,
                  color: const Color(0xff8687E7),
                  onPressed: () {
                    ///todo create category
                  },
                  child: const Text(
                    "Create Category",
                    style: TextStyle(
                        color: AppColor.white,
                        fontWeight: FontWeight.w400,
                        fontFamily: AppStrings.fontFamily,
                        fontSize: 16),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
