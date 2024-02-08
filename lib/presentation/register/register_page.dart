import 'package:flutter/material.dart';
import 'package:todo_coder/presentation/register/widgets/have_account_and_go_login.dart';
import 'package:todo_coder/presentation/register/widgets/header_of_screen_register.dart';
import 'package:todo_coder/presentation/register/widgets/section_login_with_social_in_register.dart';
import 'package:todo_coder/presentation/register/widgets/sections_inputs_register.dart';

import '../../core/utils/app_color.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child:  Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: AppColor.primaryColor,
          body: Padding(
            padding: EdgeInsets.only(top: 20.0,right: 24,left: 24,bottom: 20),
            child: CustomScrollView(
              slivers: [
                ///header
                HeaderOfScreenRegister(),
                SliverToBoxAdapter(
                    child: SizedBox(
                      height: 53,
                    )),
                /// inputs of login
                SectionInputsOfRegister(),
                SliverToBoxAdapter(
                    child: SizedBox(
                      height: 31,
                    )),
                ///login with social
                SectionLoginWithSocialInRegister(),
                SliverToBoxAdapter(
                    child: SizedBox(
                      height: 46,
                    )),
                ///forget password
                SectionHaveAccountAndGoLogin()


              ],
            ),
          )
      ),
    );
  }
}
