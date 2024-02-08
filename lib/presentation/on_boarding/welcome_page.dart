import 'package:flutter/material.dart';
import 'package:todo_coder/core/utils/app_color.dart';
import 'package:todo_coder/presentation/login/login_page.dart';
import 'package:todo_coder/presentation/register/register_page.dart';

import '../../core/utils/app_strings.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      body: Padding(
        padding: const EdgeInsets.only(top: 50.0, left: 24,right: 24,bottom: 67),
        child: Column(
          children: [
            ///back arrow
            Row(
              children: [
                InkWell(
                  onTap:(){
                    Navigator.pop(context);
                  } ,
                  child: const Icon(
                    Icons.arrow_back_ios_new_outlined,
                    color: AppColor.white,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 58,
            ),
            ///text welcome
            const Text(
              "Welcome to UpTodo",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                  fontFamily: AppStrings.fontFamily,
                  color: AppColor.white),
            ),
            const SizedBox(
              height: 26,
            ),
            const Text(
              "Please login to your account or create",
              style: TextStyle(
                  fontFamily: AppStrings.fontFamily,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: AppColor.grey),
            ),
            const Text(
              "new account to continue",
              style: TextStyle(
                  fontFamily: AppStrings.fontFamily,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: AppColor.grey),
            ),
            const Spacer(),
            ///button to login
            MaterialButton(
              height: 50,
              minWidth: double.infinity,
              color: AppColor.secondColor,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage(),));
              },
              child: const Text("Login",style: TextStyle(
                  fontFamily: AppStrings.fontFamily,
                color: AppColor.white,fontSize: 16,fontWeight: FontWeight.w400
              ),),
            ),
            const SizedBox(height: 28,),
            ///button to register
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterPage(),));

              },
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColor.secondColor
                  )
                ),
                child: const Center(
                  child: Text("Create account",style: TextStyle(
                      fontFamily: AppStrings.fontFamily,
                      color: AppColor.white,fontSize: 16,fontWeight: FontWeight.w400
                  ),
                                ),
                )
              ),
            )
          ],
        ),
      ),
    );
  }
}
