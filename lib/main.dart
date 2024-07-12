import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/screens/auth_screen.dart';
import 'package:flutter_application_1/screens/business_owner_signup.dart';
import 'package:flutter_application_1/screens/car_owner_signup.dart';
import 'package:flutter_application_1/screens/sign_up.dart';
import 'package:flutter_application_1/screens/signup_success.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute: '/', routes: {
      '/': (context) => const AuthScreen(),
      '/signup': (context) => const SignUp(),
      '/carOwnerSignup': (context) => const CarOwnerSignup(),
      '/businessOwnerSignup': (context) => const BusinessOwnerSignup(),
      '/signupSuccess': (context) => const SignupSuccess()
    });
  }
}
