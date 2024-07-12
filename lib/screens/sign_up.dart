import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/left_arrow.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/utils/responsive_util.dart';
import 'package:flutter_svg/svg.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  // Group value to track which radio button is selected
  String? _selectedOption;

  @override
  Widget build(BuildContext context) {
    final responsiveUtil = ResponsiveUtil(context);

    return Scaffold(
      backgroundColor: backgroundColor,
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: responsiveUtil.horizontalPadding,
            vertical: responsiveUtil.verticalPadding),
        child: Align(
          alignment: Alignment.topCenter,
          child: Container(
            width: responsiveUtil.responsiveWidth,
            height: responsiveUtil.screenHeight,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const LeftArrow(),
                const SizedBox(height: 10),
                const Text(
                  'Sign-up',
                  style: TextStyle(
                    fontSize: 32,
                    color: primaryColor,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'IBM Plex Sans',
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'How would you identify yourself?',
                  style: TextStyle(
                    color: primaryColor,
                    fontSize: 16,
                    fontFamily: 'IBM Plex Sans',
                  ),
                ),
                const SizedBox(height: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Radio<String>(
                          value: 'Car Owner',
                          groupValue: _selectedOption,
                          activeColor: primaryColor,
                          onChanged: (value) {
                            setState(() {
                              _selectedOption = value;
                            });
                          },
                        ),
                        const Text('Car Owner'),
                      ],
                    ),
                    Row(
                      children: [
                        Radio<String>(
                          value: 'Business Owner',
                          groupValue: _selectedOption,
                          activeColor: primaryColor,
                          onChanged: (value) {
                            setState(() {
                              _selectedOption = value;
                            });
                          },
                        ),
                        const Text('Business Owner'),
                      ],
                    ),
                  ],
                ),
                const Spacer(),
                Align(
                  alignment: Alignment.center,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_selectedOption == 'Car Owner') {
                        Navigator.pushNamed(context, '/carOwnerSignup');
                      } else if (_selectedOption == 'Business Owner') {
                        Navigator.pushNamed(context, '/businessOwnerSignup');
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                              content: Text('Please select an option')),
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(responsiveUtil.responsiveWidth, 64),
                      backgroundColor: primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: const Text(
                      'Confirm',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'IBM Plex Sans',
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
