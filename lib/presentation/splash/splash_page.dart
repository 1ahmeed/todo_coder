
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:todo_coder/core/utils/app_color.dart';
import 'package:todo_coder/core/utils/app_images.dart';
import 'package:todo_coder/core/utils/app_strings.dart';
import 'package:todo_coder/presentation/on_boarding/onBoardingPage.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);


  @override
  State<SplashPage> createState() => _SplashPageState();
}


class _SplashPageState extends State<SplashPage> {
  late Timer _timer;

  _goNext() => Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => OnBoardingPage(),));

  _startDelay() {
    _timer = Timer(const Duration(milliseconds: 3000), () => _goNext());
  }

  @override
  void initState() {
    super.initState();
    _startDelay();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: SvgPicture.asset(AppImages.logo,
              )
          ),
          const Text(
            "UpTodo",
            style: TextStyle(
                fontSize: 40,
                fontFamily: AppStrings.fontFamily,
                fontWeight: FontWeight.bold,
                color: AppColor.white),)
        ],
      ),
    );
  }
}
