import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/components/custom_input_field.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_svg/svg.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SvgPicture.asset(
              'assets/carLogo.svg',
              width: 100,
              height: 100,
              color: Colors.white,
            ),
            const SizedBox(height: 5),
            const Text(
              'ParkEase',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
                fontFamily: 'IBM Plex Sans',
              ),
            ),
            const SizedBox(height: 65),
            const CustomInputField(
              labelText: 'Username',
              borderColor: Colors.white,
              labelBgColor: primaryColor,
              labelColor: Colors.white,
              inputTextColor: Colors.white,
            ),
            const SizedBox(height: 24),
            const CustomInputField(
              labelText: 'Password',
              isPassword: true,
              borderColor: Colors.white,
              labelBgColor: primaryColor,
              labelColor: Colors.white,
              inputTextColor: Colors.white,
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(320, 53),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: const Text(
                'Log-in',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'IBM Plex Sans',
                  color: primaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(218, 64),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                        'assets/download.png',
                        width: 39,
                        height: 39,
                      ),
                  const SizedBox(width: 8),
                  const Text(
                    'Sign-in with Google',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xFF1D3E5D),
                      fontWeight: FontWeight.bold,
                      fontFamily: 'IBM Plex Sans',
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Not a user or business?',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'IBM Plex Sans',
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 8),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/signup');
                    },
                    child: const Text(
                      'Sign Up!',
                      style: TextStyle(
                        color: Colors.white,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        fontFamily: 'IBM Plex Sans',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
