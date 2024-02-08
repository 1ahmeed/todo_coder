import 'package:flutter/material.dart';
import 'package:todo_coder/core/utils/app_color.dart';
import 'package:todo_coder/core/utils/app_strings.dart';

class InputsToEditTask extends StatelessWidget {
  InputsToEditTask({Key? key}) : super(key: key);
  final titleTaskController = TextEditingController();
  final descriptionTaskController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ///input title
        TextFormField(
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
            enabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xff979797))),
          ),
        ),
        const SizedBox(
          height: 14,
        ),

        ///input description
        TextFormField(
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
            enabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xff979797))),
          ),
        ),
      ],
    );
  }
}
