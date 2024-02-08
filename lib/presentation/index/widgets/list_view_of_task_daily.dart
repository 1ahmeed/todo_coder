import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/utils/app_color.dart';
import '../../../core/utils/app_images.dart';
import '../../../core/utils/app_strings.dart';
import '../task_details_page.dart';

class ListViewOfTaskDaily extends StatefulWidget {
   const ListViewOfTaskDaily({Key? key}) : super(key: key);

  @override
  State<ListViewOfTaskDaily> createState() => _ListViewOfTaskDailyState();
}

class _ListViewOfTaskDailyState extends State<ListViewOfTaskDaily> {
  int? selectedRadioForDaily;

  setSelectedRadio(int val) {
    setState(() {
      selectedRadioForDaily = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap:true,
      separatorBuilder: (context, index) => const SizedBox(height: 16,),
      itemCount: 2,
      itemBuilder: (context, index) {
        ///todo build daily task item
        ///error in select radio button when split item from list view
        return Stack(
            children:[
              ///radio button
              Container(
                decoration: BoxDecoration(
                    color: const Color(0xff363636),
                    borderRadius: BorderRadius.circular(4)
                ),

                child: RadioListTile(
                  value: index,
                  groupValue: selectedRadioForDaily,
                  onChanged: (val){
                    setSelectedRadio(val!);
                    ///navigator to task details page
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const TaskDetailsPage(),));

                  },
                  contentPadding: EdgeInsets.zero,
                  visualDensity: const VisualDensity(
                    horizontal: VisualDensity.minimumDensity,
                  ),
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,

                  selected: selectedRadioForDaily==index,
                  activeColor: Colors.blue,
                  title: const Padding(
                    padding: EdgeInsets.only(left:0, bottom: 8.0),
                    child: Text("helooooooooooooo",style: TextStyle(
                        fontFamily:AppStrings.fontFamily ,
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color:AppColor.white
                    ),),
                  ),
                  subtitle: const Text("do my home work",style: TextStyle(
                      fontFamily:AppStrings.fontFamily ,
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color:Color(0xffAFAFAF)
                  )),
                ),
              ),
              ///button category
              Positioned(
                top: 29,
                left:200 ,
                child: MaterialButton(
                    padding: EdgeInsets.zero,
                    height: 29,
                    minWidth: 85,
                    color: AppColor.secondColor,
                    onPressed: () {
                      ///todo navigation of category in item task
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize:  MainAxisSize.min,

                      children: [
                        Center(child: SvgPicture.asset(AppImages.university,width: 15,height: 15,)),
                        const SizedBox(width:5 ,),
                        const Text("University",style: TextStyle(
                            color: AppColor.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            fontFamily: AppStrings.fontFamily
                        ),)
                      ],
                    )
                ),
              ),
              const SizedBox(height: 28,),
              ///button to flag
              Positioned(
                top: 38,
                left: 295,
                child: InkWell(
                  onTap: (){
                    ///todo navigation of flag in item task
                  },
                  child: Container(
                      height: 29,
                      width: 42,
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 1.5,
                              color: AppColor.secondColor
                          ),
                          borderRadius: BorderRadius.circular(4)
                      ),
                      child:  Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(AppImages.flagTaskPriority,
                              width: 15,),
                            Text("${index + 1}",style: const TextStyle(
                                fontSize: 12,
                                fontFamily: AppStrings.fontFamily,
                                color: AppColor.white
                            ),)
                          ],
                        ),
                      )
                  ),
                ),
              )
            ]

        );
      } ,


    );
  }
}
