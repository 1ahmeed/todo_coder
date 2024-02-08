import 'package:flutter/material.dart';
import 'package:todo_coder/core/utils/app_color.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isChosen, required this.color});

  final bool isChosen;

  final Color color;
  @override
  Widget build(BuildContext context) {
    return isChosen
        ? CircleAvatar(
      radius: 20,
      backgroundColor: color,
      child: const Icon(Icons.check,color: AppColor.white,),
    )
        : CircleAvatar(
      radius: 20,
      backgroundColor: color,
    );
  }
}

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentSelectedColor = 0;
  List<Color> colorsList = const [
    Color(0xffAC3931),
    Color(0xffE5D352),
    Color(0xffD9E76C),
    Color(0xff537D8D),
    Color(0xff482C3D),

  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20* 2,
      child: ListView.builder(
        itemCount: colorsList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: GestureDetector(
              onTap: () {
                currentSelectedColor = index;
                setState(() {});
              },
              child: ColorItem(
                color: colorsList[index],
                isChosen:currentSelectedColor == index,
              ),
            ),
          );
        },
      ),
    );
  }
}