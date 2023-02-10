// ignore_for_file: prefer_const_constructors

import 'package:bank_sha/ui/pages/auth/pin_page.dart';
import 'package:bank_sha/ui/pages/auth/signup_page.dart';
import 'package:bank_sha/ui/pages/auth/signup_profile_page.dart';
import 'package:bank_sha/ui/pages/auth/signup_success_page.dart';
import 'package:bank_sha/ui/pages/auth/signup_verify_page.dart';
import 'package:bank_sha/ui/pages/home_page.dart';
import 'package:bank_sha/ui/pages/onboard_page.dart';
import 'package:bank_sha/ui/pages/splash_page.dart';
import 'package:flutter/material.dart';

import 'ui/pages/auth/signin_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/onboard': (context) => OnboardPage(),
        '/sign-in': (context) => LoginPage(),
        '/sign-up': (context) => SignUpPage(),
        '/sign-up-profile': (context) => SignUpProfile(),
        '/sign-up-verify': (context) => SignUpVerifyPage(),
        '/sign-up-success': (context) => SignUpSuccess(),
        '/sign-in-pin': (context) => PinPage(),
        '/home': (context) => HomePage(),
      },
    );
  }
}
