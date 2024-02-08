import 'package:flutter/material.dart';
import 'package:todo_coder/core/utils/app_color.dart';
import 'package:todo_coder/presentation/login/widgets/header_of_screen_login.dart';
import 'package:todo_coder/presentation/login/widgets/not_have_accountaAnd_go_register.dart';
import 'package:todo_coder/presentation/login/widgets/section_login_with_social.dart';
import 'package:todo_coder/presentation/login/widgets/sections_inputs.dart';



class LoginPage extends StatelessWidget {

  const LoginPage({super.key});
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
              HeaderOfScreenLogin(),
              SliverToBoxAdapter(
                  child: SizedBox(
                    height: 53,
                  )),
              /// inputs of login
              SectionInputsOfLogin(),
              SliverToBoxAdapter(
                  child: SizedBox(
                    height: 31,
                  )),
              ///login with social
              SectionLoginWithSocial(),
              SliverToBoxAdapter(
                  child: SizedBox(
                    height: 46,
                  )),
              ///forget password
              SectionForgetPasswordAndGoRegister()
            ],
          ),
        )
      ),
    );
  }
}


