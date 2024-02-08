import 'package:flutter/material.dart';

class HeaderOfTaskDetails extends StatelessWidget {
  const HeaderOfTaskDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 32,
          height: 32,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: const Color(0xff1D1D1D),
          ),
          child: const Icon(
            Icons.clear,
            color: Colors.white,
          ),
        ),
        Container(
          width: 32,
          height: 32,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: const Color(0xff1D1D1D),
          ),
          child: const Icon(
            Icons.repeat,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
