import 'package:flutter/material.dart';

import '../../../core/utils/app_color.dart';
import '../../../core/utils/app_strings.dart';


class SectionInputsOfRegister extends StatefulWidget {
  const SectionInputsOfRegister({Key? key}) : super(key: key);

  @override
  State<SectionInputsOfRegister> createState() => _SectionInputsOfRegisterState();
}

class _SectionInputsOfRegisterState extends State<SectionInputsOfRegister> {
  final formKey = GlobalKey<FormState>();

  final emailController = TextEditingController();

  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  //this opacity use in onChange in textFormField
  // if has data tha opacity will change in button of login
  double opacity=.5;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Username",style: TextStyle(
                color: AppColor.white,
                fontWeight:FontWeight.w400 ,
                fontSize: 16,
                fontFamily: AppStrings.fontFamily
            ),),
            const SizedBox(height: 8,),
            TextFormField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              validator: (value) {
                if (value!.trim().isEmpty) {
                  return "Please Enter Your Email";
                } else {
                  return null;
                }
              },
              onChanged: (value){
                if(value != ""&& passwordController.text!= ""&& confirmPasswordController.text !=""){
                  setState(() {
                    opacity=1;
                  });
                }else{
                  setState(() {
                    opacity=.5;
                  });
                }

              },
              style: const TextStyle(
                  color: AppColor.white,
                fontFamily: AppStrings.fontFamily,
              ),
              cursorColor:AppColor.white ,
              decoration: const InputDecoration(
                fillColor: Color(0xff1D1D1D),
                filled: true,
                floatingLabelBehavior: FloatingLabelBehavior.never,
                labelText: "Enter your Username",
                labelStyle: TextStyle(
                    fontSize: 16,
                    fontFamily: AppStrings.fontFamily,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff535353)
                ),
                errorBorder: OutlineInputBorder(borderSide: BorderSide.none),
                enabledBorder: OutlineInputBorder(borderSide: BorderSide(
                    color: Color(0xff979797)
                )),
                focusedBorder: OutlineInputBorder(borderSide:BorderSide(
                    color: Color(0xff979797))),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const Text("Password",style: TextStyle(
                color: AppColor.white,
                fontWeight:FontWeight.w400 ,
                fontSize: 16,
                fontFamily: AppStrings.fontFamily
            ),),
            const SizedBox(height: 8,),
            TextFormField(
              controller: passwordController,
              keyboardType: TextInputType.visiblePassword,
              validator: (value) {
                if (value!.isEmpty) {
                  return "Please Enter Your Password";
                } else {
                  return null;
                }
              },
              onChanged: (value){
                if(value != ""&& emailController.text!= ""&&confirmPasswordController.text!=""){
                  setState(() {
                    opacity=1;
                  });
                }else{
                  setState(() {
                    opacity=.5;
                  });
                }

              },
              obscureText: true,
              style: const TextStyle(
                  color: AppColor.white,
                  fontFamily: AppStrings.fontFamily,
                  letterSpacing: 5,fontWeight: FontWeight.bold
              ),
              cursorColor: AppColor.white,
              decoration: const InputDecoration(
                fillColor: Color(0xff1D1D1D),
                filled: true,
                floatingLabelBehavior: FloatingLabelBehavior.never,
                labelText: "••••••••••",
                labelStyle: TextStyle(
                    fontSize: 20,
                    letterSpacing: 8,
                    fontFamily: AppStrings.fontFamily,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff535353)
                ),
                errorBorder: OutlineInputBorder(borderSide: BorderSide.none),
                enabledBorder: OutlineInputBorder(borderSide: BorderSide(
                    color: Color(0xff979797)
                )),
                focusedBorder: OutlineInputBorder(borderSide:BorderSide(
                    color: Color(0xff979797))),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const Text("Confirm Password",style: TextStyle(
                color: AppColor.white,
                fontWeight:FontWeight.w400 ,
                fontSize: 16,
                fontFamily: AppStrings.fontFamily
            ),),
            const SizedBox(height: 8,),
            TextFormField(
              controller: confirmPasswordController,
              keyboardType: TextInputType.visiblePassword,
              validator: (value) {
                if (value!.isEmpty) {
                  return "Please Enter Your Password";
                } else {
                  return null;
                }
              },
              onChanged: (value){
                if(value != ""&& emailController.text!= ""&&passwordController.text!=""){
                  setState(() {
                    opacity=1;
                  });
                }else{
                  setState(() {
                    opacity=.5;
                  });
                }

              },
              obscureText: true,
              style: const TextStyle(
                  color: AppColor.white,
                  fontFamily: AppStrings.fontFamily,
                  letterSpacing: 5,fontWeight: FontWeight.bold
              ),
              cursorColor: AppColor.white,
              decoration: const InputDecoration(
                fillColor: Color(0xff1D1D1D),
                filled: true,
                floatingLabelBehavior: FloatingLabelBehavior.never,
                labelText: "••••••••••",
                labelStyle: TextStyle(
                    fontSize: 20,
                    fontFamily: AppStrings.fontFamily,
                    letterSpacing: 8,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff535353)
                ),
                errorBorder: OutlineInputBorder(borderSide: BorderSide.none),
                enabledBorder: OutlineInputBorder(borderSide: BorderSide(
                    color: Color(0xff979797)
                )),
                focusedBorder: OutlineInputBorder(borderSide:BorderSide(
                    color: Color(0xff979797))),
                border: OutlineInputBorder(),
              ),
            ),
            ///button register
            const SizedBox(
              height: 71,
            ),
            Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                  color: const Color(0xff8687E7).withOpacity(opacity
                  ),
                  borderRadius: BorderRadius.circular(10)),
              child: MaterialButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    ///todo:navigation to home and login
                  }
                },
                child:  Text(
                  "Register",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontFamily: AppStrings.fontFamily,
                      color: Colors.white.withOpacity(opacity),
                      fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
