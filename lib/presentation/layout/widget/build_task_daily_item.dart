import 'package:flutter/material.dart';

class BuildTaskDailyItem extends StatefulWidget {
  const BuildTaskDailyItem({Key? key, required this.index})
      : super(key: key);
  final int index;

  @override
  State<BuildTaskDailyItem> createState() => _BuildTaskDailyItemState();
}

class _BuildTaskDailyItemState extends State<BuildTaskDailyItem> {


  @override
  void initState() {
    super.initState();
  }

// Changes the selected value on 'onChanged' click on each radio button
  int? selectedRadio;
  setSelectedRadio(int val) {
    setState(() {
      selectedRadio = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff363636),
      child: const Row(
        children: [

          // Expanded(
          //   child: RadioListTile(
          //     value: currentItemSelection,
          //     groupValue: selectedRadio,
          //     onChanged: (val){
          //       setSelectedRadio(val!);
          //     },
          //     selected: selectedRadio==currentItemSelection,
          //     activeColor: Colors.blue,
          //     title: Text("helooooooooooooooooooooooooooooo"),
          //     subtitle: Text("do my home work"),
          //   ),
          // )

        ],
      ),
    );
  }
}
