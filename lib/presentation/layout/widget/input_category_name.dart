import 'package:flutter/material.dart';
import 'package:todo_coder/core/utils/app_strings.dart';

import '../../../core/utils/app_color.dart';

class InputCategoryName extends StatelessWidget {
  InputCategoryName({Key? key}) : super(key: key);
  final categoryNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
      ],
    );
  }
}