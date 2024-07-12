import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/left_arrow.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/utils/responsive_util.dart';

class SignupSuccess extends StatelessWidget {
  const SignupSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    final responsiveUtil = ResponsiveUtil(context);

    return Scaffold(
      backgroundColor: backgroundColor,
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: responsiveUtil.horizontalPadding,
          vertical: responsiveUtil.verticalPadding,
        ),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LeftArrow(),
            SizedBox(height: 23),
            Text(
              'Sign-up Successful',
              style: TextStyle(
                  color: primaryColor,
                  fontFamily: 'IBM Plex Sans',
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
