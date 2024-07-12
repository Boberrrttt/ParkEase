import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/components/custom_input_field.dart';
import 'package:flutter_application_1/components/left_arrow.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/utils/responsive_util.dart';

class CarOwnerSignup extends StatelessWidget {
  const CarOwnerSignup({super.key});

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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const LeftArrow(),
            const SizedBox(height: 23),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  width: responsiveUtil.responsiveWidth,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 128,
                        height: 128,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(18),
                          border: Border.all(
                            color: primaryColor,
                            width: 2.8,
                          ),
                        ),
                      ),
                      const SizedBox(height: 23),
                      const CustomInputField(
                          labelText: 'First Name',
                          labelBgColor: Colors.white,
                          labelColor: primaryColor,
                          borderColor: primaryColor,
                          inputTextColor: primaryColor),
                      const SizedBox(height: 23),
                      const CustomInputField(
                        labelText: 'Last Name',
                        borderColor: primaryColor,
                        labelBgColor: Colors.white,
                        labelColor: primaryColor,
                        inputTextColor: primaryColor,
                      ),
                      const SizedBox(height: 23),
                      const CustomInputField(
                        labelText: 'Username',
                        borderColor: primaryColor,
                        labelBgColor: Colors.white,
                        labelColor: primaryColor,
                        inputTextColor: primaryColor,
                      ),
                      const SizedBox(height: 23),
                      const CustomInputField(
                        labelText: 'Email',
                        borderColor: primaryColor,
                        labelBgColor: Colors.white,
                        labelColor: primaryColor,
                        inputTextColor: primaryColor,
                      ),
                      const SizedBox(height: 23),
                      CustomInputField(
                        labelText: 'Phone Number',
                        borderColor: primaryColor,
                        labelBgColor: Colors.white,
                        labelColor: primaryColor,
                        inputTextColor: primaryColor,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly
                        ]
                      ),
                      const SizedBox(height: 23),
                      const CustomInputField(
                        labelText: 'Password',
                        borderColor: primaryColor,
                        labelBgColor: Colors.white,
                        labelColor: primaryColor,
                        inputTextColor: primaryColor,
                      ),
                      const SizedBox(height: 23),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16), // Adjust spacing as needed
            Center(
              child: Container(
                width: responsiveUtil.responsiveWidth,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            fixedSize: const Size(149, 64),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                                side: const BorderSide(
                                  color: primaryColor,
                                  width: 2.8,
                                ))),
                        child: const Text(
                          'Back',
                          style: TextStyle(
                              color: primaryColor,
                              fontSize: 16,
                              fontFamily: 'IBM Plex Sans',
                              fontWeight: FontWeight.bold),
                        )),
                    const SizedBox(width: 12),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/signupSuccess');
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: primaryColor,
                            fixedSize: const Size(149, 64),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                                side: const BorderSide(
                                  color: primaryColor,
                                  width: 2.8,
                                ))),
                        child: const Text(
                          'Confirm',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'IBM Plex Sans',
                              fontWeight: FontWeight.bold),
                        ))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
