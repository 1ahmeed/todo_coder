import 'package:flutter/material.dart';

import 'active_inactive_flag_of_task_details.dart';


class FlagListViewOfTaskDetails extends StatefulWidget {
  const FlagListViewOfTaskDetails({Key? key}) : super(key: key);

  @override
  State<FlagListViewOfTaskDetails> createState() => _FlagListViewOfTaskDetailsState();
}

class _FlagListViewOfTaskDetailsState extends State<FlagListViewOfTaskDetails> {
  int currentFlag=0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 4,
        right: 5,
      ),
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 65,
          crossAxisCount: 4,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
        ),
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                currentFlag=index;

              });
            },
            child: ActiveInactiveFlagOfTaskDetails(
                isChosen: currentFlag==index,
                currentFlagSelected: index),
          );
        },
      ),
    );
  }
}