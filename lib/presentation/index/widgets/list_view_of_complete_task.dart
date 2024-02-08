import 'package:flutter/material.dart';

import '../../../core/utils/app_color.dart';
import '../../../core/utils/app_strings.dart';

class ListViewOfCompleteTask extends StatefulWidget {
   const ListViewOfCompleteTask({Key? key}) : super(key: key);

  @override
  State<ListViewOfCompleteTask> createState() => _ListViewOfCompleteTaskState();
}

class _ListViewOfCompleteTaskState extends State<ListViewOfCompleteTask> {
  int? selectedRadioForComplete;

  setSelectedRadioForComplete(int val) {
    setState(() {
      selectedRadioForComplete = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap:true,
      padding:  const EdgeInsets.only(bottom: 10),
      separatorBuilder: (context, index) => const SizedBox(height: 16,),
      itemCount: 3,
      itemBuilder: (context, index) {
        ///todo build complete task item
        ///error in select radio button when split item from list view 
        return Container(
          decoration: BoxDecoration(
              color: const Color(0xff363636),
              borderRadius: BorderRadius.circular(4)
          ),

          child: RadioListTile(
            value: index,
            groupValue: selectedRadioForComplete,
            onChanged: (val){
              setSelectedRadioForComplete(val!);
            },
            contentPadding: EdgeInsets.zero,
            visualDensity: const VisualDensity(
              horizontal: VisualDensity.minimumDensity,
            ),
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            selected: selectedRadioForComplete==index,
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
        );
      } ,
      // BuildCompleteTaskItem(currentItemSelection: index+1),
    );
  }
}
