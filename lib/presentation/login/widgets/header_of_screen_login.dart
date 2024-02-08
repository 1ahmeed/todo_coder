import 'package:flutter/material.dart';
import 'package:todo_coder/core/utils/app_color.dart';

import '../../../core/utils/app_strings.dart';

class HeaderOfScreenLogin extends StatelessWidget {
  const HeaderOfScreenLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(
                  Icons.arrow_back_ios_new_outlined,
                  color: AppColor.white,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 41,
          ),
          const Text("Login",
              style: TextStyle(
                color: AppColor.white,
                fontFamily: AppStrings.fontFamily,
                fontWeight: FontWeight.bold,
                fontSize: 32,
              )),
        ],
      ),
    );
  }
}
