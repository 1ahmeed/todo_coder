import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/utils/app_color.dart';
import '../../../core/utils/app_images.dart';
import '../../../core/utils/app_strings.dart';

class SectionLoginWithSocial extends StatelessWidget {
  const SectionLoginWithSocial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
        child:Column(
          children: [
            ///divider
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Expanded(child: Divider(
                  indent:1 ,
                  endIndent: 20,
                  thickness: 2,
                  color: Color(0xff979797),
                )),

                Text("or",style: TextStyle(
                    fontSize: 16,
                    fontFamily: AppStrings.fontFamily,
                    color:Color(0xff979797) ,
                    fontWeight: FontWeight.w400
                )),
                Expanded(child: Divider(
                    thickness: 2,
                    indent:20 ,
                    endIndent: 1,
                    color: Color(0xff979797)
                ))
              ],
            ),
            const SizedBox(height: 29,),
            ///login with google
            InkWell(
              onTap: () {

              },
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                    border: Border.all(
                        color:const Color(0xff8875FF),
                        width: 1
                    )
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(AppImages.google),
                    const SizedBox(width:10 ,),
                    const Text("Login With Google",style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: AppColor.white,
                      fontFamily: AppStrings.fontFamily,
                    ),)
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20,),
            ///login with apple
            InkWell(
              onTap: () {

              },
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                    border: Border.all(
                        color:const Color(0xff8875FF),
                        width: 1
                    )
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(AppImages.apple),
                    const SizedBox(width:10 ,),
                    const Text("Login With Appe",style: TextStyle(
                        fontSize: 14,
                        fontFamily: AppStrings.fontFamily,
                        fontWeight: FontWeight.w700,
                        color: AppColor.white
                    ),)
                  ],
                ),
              ),
            ),
          ],
        )
    );
  }
}
