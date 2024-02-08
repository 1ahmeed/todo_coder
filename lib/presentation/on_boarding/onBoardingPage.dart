import 'package:flutter/material.dart';
import 'package:todo_coder/core/utils/app_images.dart';
import 'package:todo_coder/presentation/on_boarding/welcome_page.dart';

import '../../core/utils/app_color.dart';
import '../../core/utils/app_strings.dart';
import '../../models/on_boarding_model.dart';
import 'widget/build_boarding_item.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  List<BoardingModel> boarding = [
    BoardingModel(
      image: AppImages.boarding1,
      title: 'Manage your tasks',
      body2: "tasks in DoMe for free",
      body: 'You can easily manage all of your daily ',
    ),
    BoardingModel(
        image: AppImages.boarding2,
        title: 'Create daily routine',
        body: 'In Uptodo  you can create your ',
        body2: "personalized routine to stay productive"),
    BoardingModel(
        image: AppImages.boarding3,
        title: 'Orgonaize your tasks',
        body: 'You can organize your daily tasks by ',
        body2: "adding your tasks into separate categories"),
  ];

  bool isLastPage = false;
  int currentPage = 0;
  var boardController = PageController();

  void nextPage() {
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const WelcomePage()),);
  }

  int backPage() {
    int previousIndex = --currentPage;
    if (previousIndex == -1) {
      currentPage = 0;
    }
    return currentPage;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      body: Padding(
        padding:  EdgeInsets.only(
             top: MediaQuery.of(context).size.height *.07,
            left: MediaQuery.of(context).size.width*.05,
            right: MediaQuery.of(context).size.width* .05,
            bottom:MediaQuery.of(context).size.height* .1),
        child: Column(
          children: [
            ///button skip
            Row(
              children: [
                TextButton(
                    onPressed: () {
                      nextPage();
                    },
                    child: const Text(
                      "SKIP",
                      style: TextStyle(fontSize: 15,
                          fontFamily: AppStrings.fontFamily,
                          color: AppColor.grey),
                    )),
              ],
            ),

            ///on boarding content
            Expanded(
              child: PageView.builder(
                physics: const BouncingScrollPhysics(),
                controller: boardController,
                onPageChanged: (int index) {
                  setState(() {
                    currentPage = index;
                  });
                  if (index == boarding.length - 1) {
                    setState(() {
                      isLastPage = true;
                    });
                  } else {
                    setState(() {
                      isLastPage = false;
                    });
                  }
                },
                itemBuilder: (context, index) => BuildBoardingItem(
                  boardingModel: boarding[index],
                  numOfSlides: boarding.length,
                  currentSlide: index,
                ),
                itemCount: boarding.length,
              ),
            ),
            const SizedBox(
              height: 90,
            ),

            /// go and back button
            Row(
              children: [
                ///back
                TextButton(
                    onPressed: () {
                      boardController.animateToPage(backPage(),
                          duration: const Duration(
                            milliseconds: 750,
                          ),
                          curve: Curves.fastLinearToSlowEaseIn);
                    },
                    child: const Text(
                      "Back",
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: AppStrings.fontFamily,
                          fontWeight: FontWeight.w400,
                          color: AppColor.grey),
                    )),
                const Spacer(),
                ///next
                GestureDetector(
                  onTap: () {
                    if (isLastPage) {
                      nextPage();
                    } else {
                      boardController.nextPage(
                          duration: const Duration(
                            milliseconds: 750,
                          ),
                          curve: Curves.fastLinearToSlowEaseIn);
                    }
                  },
                  child: Container(
                    height: 50,
                    width: 120,
                    decoration: BoxDecoration(
                        color: AppColor.secondColor,
                        borderRadius: BorderRadius.circular(4)),
                    child: Center(
                      child: Text(
                        isLastPage ? "GET STARTED" : "Next",
                        style: const TextStyle(
                            fontSize: 16,
                            fontFamily: AppStrings.fontFamily,

                            color: AppColor.white,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

}



