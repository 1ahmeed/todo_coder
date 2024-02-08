import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:todo_coder/core/utils/app_color.dart';
import 'package:todo_coder/presentation/layout/widget/add_task_section.dart';

import '../../core/utils/app_images.dart';
import '../../core/utils/app_strings.dart';
import '../calender/calender_page.dart';
import '../focus/focus_page.dart';
import '../index/index_page.dart';
import '../profile/profile_page.dart';

class LayoutPage extends StatefulWidget {
  const LayoutPage({Key? key}) : super(key: key);

  @override
  State<LayoutPage> createState() => _LayoutPageState();
}

class _LayoutPageState extends State<LayoutPage> {
  ///layout page navbar / float action button /app bar
  int  currentIndexOfNavBar=0;
  final scaffoldKey=GlobalKey<ScaffoldState>();
  List<Widget> screensOfNavBar=[
     IndexPage(),
    const CalenderPage(),
    const FocusPage(),
    const ProfilePage(),
  ];
  List<String> titlesOfAppBar=[
    "Index",
    "Calender",
    "Focus",
    "Profile",
  ];
  @override
  Widget build(BuildContext context) {
    bool showFAB=MediaQuery.viewInsetsOf(context).bottom!=0;
    return Scaffold(
      key: scaffoldKey,
      appBar: buildAppBar(),
      floatingActionButton: Visibility(
        visible: !showFAB,
        child: FloatingActionButton(
          onPressed: (){
             showAddTaskBottomSheet();
          },
          shape: const CircleBorder(),
          backgroundColor: AppColor.secondColor,
          child: const Icon(Icons.add,color: AppColor.white,),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      backgroundColor: AppColor.primaryColor,
        bottomNavigationBar: buildBottomNavigationBar(),
         body:screensOfNavBar[currentIndexOfNavBar]
    );
  }

  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
        backgroundColor:const Color(0xff363636),
        selectedItemColor:AppColor.white ,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.white,
        currentIndex: currentIndexOfNavBar,
        selectedLabelStyle:const TextStyle(
          fontFamily:AppStrings.fontFamily ,
          fontWeight: FontWeight.w400,
          fontSize: 12,
        ),
        unselectedLabelStyle:const TextStyle(
            fontFamily:AppStrings.fontFamily ,
            fontWeight: FontWeight.w400,
            fontSize: 12,
        ),
        onTap: (int index){
          setState(() {
            currentIndexOfNavBar=index;
          });

        },
        items: [
          BottomNavigationBarItem(

            icon: SvgPicture.asset(AppImages.homeVanBar),
            label: "Index",

          ),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(AppImages.calender),
              label: "Calender"
          ),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(AppImages.clock),
              label: "Focus"
          ),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(AppImages.user),
              label: "Profile"
          ),
        ],
      );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
        leading: Center(child: SvgPicture.asset(AppImages.menu,)),
        centerTitle: true,
        title:  Text(titlesOfAppBar[currentIndexOfNavBar],
            style: const TextStyle(
            fontWeight:FontWeight.w400 ,
            fontFamily: AppStrings.fontFamily,
            fontSize:20 ,
            color: AppColor.white
        )),
      actions: [
        CircleAvatar(
          radius: 20,
          child: SvgPicture.asset(AppImages.boarding2),
        ),
        const SizedBox(width: 20,),
      ],

    );
  }

  void showAddTaskBottomSheet() {
    showModalBottomSheet(context: context,
      isScrollControlled: true,
      builder: (context) {
      return Padding(
        padding: MediaQuery.of(context).viewInsets,
        child: const AddTaskSection(),
      );
    },);
  }
}