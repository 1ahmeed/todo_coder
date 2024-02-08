import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/utils/app_color.dart';
import '../../../core/utils/app_images.dart';
import '../../../core/utils/app_strings.dart';

class SearchOfIndexPage extends StatelessWidget {
   SearchOfIndexPage({Key? key}) : super(key: key);
  final searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: searchController,
      keyboardType: TextInputType.visiblePassword,
      validator: (value) {
        if (value!.isEmpty) {
          return "Enter name of task";
        } else {
          return null;
        }
      },
      style: const TextStyle(
          color: AppColor.white,
          fontFamily: AppStrings.fontFamily,
          fontWeight: FontWeight.bold),
      cursorColor: AppColor.white,
      decoration: InputDecoration(
        fillColor: const Color(0xff1D1D1D),
        filled: true,
        prefixIcon:
        SvgPicture.asset(AppImages.search, fit: BoxFit.scaleDown),
        floatingLabelBehavior: FloatingLabelBehavior.never,
        labelText: "Search for your task...",
        labelStyle: const TextStyle(
            fontSize: 16,
            fontFamily: AppStrings.fontFamily,
            color: Color(0xffAFAFAF),
            fontWeight: FontWeight.w400),
        errorBorder:
        const OutlineInputBorder(borderSide: BorderSide.none),
        enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xff979797))),
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xff979797))),
        border: const OutlineInputBorder(),
      ),
    );
  }
}
