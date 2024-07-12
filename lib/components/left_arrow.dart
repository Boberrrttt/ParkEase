import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_svg/svg.dart';

class LeftArrow extends StatelessWidget {
  const LeftArrow({super.key});

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: () {
        Navigator.pop(context);
        },
        child: SvgPicture.asset(
          'assets/left_arrow.svg',
          width: 30,
          height: 30,
          color: primaryColor,
          ),
        );
  }  
}