import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:todo_coder/core/utils/app_color.dart';
import 'package:todo_coder/core/utils/app_images.dart';
import 'package:todo_coder/core/utils/app_strings.dart';
import '../create_category.dart';
import 'buttons_of_flag_add_tasks.dart';
import 'ctegories_list_view.dart';
import 'flag_list_view.dart';
import 'header_of_category_add_task.dart';
import 'header_of_flag_add_task.dart';

class AddTaskSection extends StatefulWidget {
  const AddTaskSection({Key? key}) : super(key: key);

  @override
  State<AddTaskSection> createState() => _AddTaskSectionState();
}

class _AddTaskSectionState extends State<AddTaskSection> {
  final titleTaskController = TextEditingController();

  final descriptionTaskController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Color(0xff363636),
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(16), topLeft: Radius.circular(16))),
      height: 250,
      child: Padding(
        padding:
            const EdgeInsets.only(top: 25, left: 25, right: 25, bottom: 17),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///title add task
            const Expanded(
              flex: 3,
              child: Text(
                "Add Task",
                style: TextStyle(
                    color: AppColor.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: AppStrings.fontFamily,
                    fontSize: 20),
              ),
            ),
            const SizedBox(
              height: 14,
            ),

            ///input title
            Expanded(
              flex: 3,
              child: TextFormField(
                controller: titleTaskController,
                keyboardType: TextInputType.text,
                validator: (value) {
                  if (value!.trim().isEmpty) {
                    return "Please Enter title";
                  } else {
                    return null;
                  }
                },
                style: const TextStyle(
                    color: AppColor.white, fontFamily: AppStrings.fontFamily),
                cursorColor: AppColor.white,
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.only(bottom: 20, left: 10),
                  fillColor: Color(0xff363636),
                  filled: true,
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  labelText: "Enter title",
                  labelStyle: TextStyle(
                      fontSize: 16,
                      fontFamily: AppStrings.fontFamily,
                      fontWeight: FontWeight.w400,
                      color: AppColor.white),
                  errorBorder: OutlineInputBorder(borderSide: BorderSide.none),
                  enabledBorder:
                      OutlineInputBorder(borderSide: BorderSide.none),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff979797))),
                ),
              ),
            ),
            const SizedBox(
              height: 14,
            ),

            ///input description
            Expanded(
              flex: 3,
              child: TextFormField(
                controller: descriptionTaskController,
                keyboardType: TextInputType.text,
                validator: (value) {
                  if (value!.trim().isEmpty) {
                    return "Please Enter description";
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
                  contentPadding: EdgeInsets.only(bottom: 20, left: 10),
                  fillColor: Color(0xff363636),
                  filled: true,
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  labelText: "Enter description",
                  labelStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      fontFamily: AppStrings.fontFamily,
                      color: AppColor.white),
                  errorBorder: OutlineInputBorder(borderSide: BorderSide.none),
                  enabledBorder:
                      OutlineInputBorder(borderSide: BorderSide.none),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff979797))),
                ),
              ),
            ),
            const SizedBox(
              height: 35,
            ),

            ///icons
            Expanded(
              flex: 2,
              child: Row(
                children: [
                  ///icon timer
                  InkWell(
                      child: SvgPicture.asset(AppImages.timer),
                      onTap: () {
                        showTimePicker(context);
                      }),
                  const SizedBox(
                    width: 32,
                  ),

                  ///icon tag
                  InkWell(
                      onTap: () {
                        alertDialogOfTags(context);
                      },
                      child: SvgPicture.asset(AppImages.tag)),
                  const SizedBox(
                    width: 32,
                  ),

                  ///icon flag
                  InkWell(
                      onTap: () {
                        alertDialogOfFlags(context);
                      },
                      child: SvgPicture.asset(AppImages.flag)),
                  const Spacer(),

                  ///icon send
                  InkWell(
                      onTap: () {}, child: SvgPicture.asset(AppImages.send)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void showTimePicker(BuildContext context) {
    ///todo custom show time picker
    showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime.now(),
        lastDate: DateTime.parse('2070-12-02'));
  }

  void alertDialogOfFlags(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => const AlertDialog(
        elevation: 0,
        backgroundColor: Color(0xff363636),
        shape: OutlineInputBorder(borderSide: BorderSide.none),
        content: SizedBox(
          width: 327,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ///header
                HeaderOfFlagAddTask(),
                ///items of flag
                FlagListView(),
                SizedBox(height: 18),
                ///buttons
                ButtonsOfFlagAddTasks(),
              ],
            ),
          ),
        ),
      ),
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
          width: 327,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const HeaderOfCategoryAddTask(),

                ///items of category
                CategoriesListView(),

                const SizedBox(height: 18),

                ///button to add category
                Padding(
                  padding:  const EdgeInsets.all(20),
                  child: MaterialButton(
                    height: 50,
                    minWidth: double.infinity,
                    color: AppColor.secondColor,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) =>  CreateCategory(),));
                    },
                    child: const Text("Add Category",style: TextStyle(
                        fontFamily: AppStrings.fontFamily,
                        color: AppColor.white,fontSize: 16,fontWeight: FontWeight.w400
                    ),),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
