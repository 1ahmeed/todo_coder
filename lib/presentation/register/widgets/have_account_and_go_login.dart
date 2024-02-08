import 'package:flutter/material.dart';

import '../../../core/utils/app_color.dart';
import '../../../core/utils/app_strings.dart';
import '../../../presentation/login/login_page.dart';
import '../register_page.dart';

class SectionHaveAccountAndGoLogin  extends StatelessWidget {
  const SectionHaveAccountAndGoLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "have an account?",
                style: TextStyle(
                    fontSize: 12,
                    fontFamily: AppStrings.fontFamily,
                    color: Color(0xff979797),
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                width: 2,
              ),
              InkWell(
                  onTap: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) =>  const LoginPage(),));
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(
                        fontSize: 12,
                        fontFamily: AppStrings.fontFamily,
                        fontWeight: FontWeight.w400,
                        color:AppColor.white.withOpacity(.87)),
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
