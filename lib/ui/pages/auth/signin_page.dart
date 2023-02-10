// ignore_for_file: prefer_const_constructors

import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/widgets/buttons.dart';
import 'package:bank_sha/widgets/forms.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lighBgClr,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 24),
        children: [
          Container(
            width: 155,
            height: 50,
            margin: EdgeInsets.only(top: 100),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/img_logo_light.png')),
            ),
          ),
          SizedBox(
            height: 70,
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              'Sign In &\nGrow Your Finance',
              style: blackTS.copyWith(
                fontWeight: semibold,
                fontSize: 20,
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(22),
            decoration: BoxDecoration(
              color: whiteClr,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // email input
                CustomFormField(title: 'Email Address'),
                SizedBox(height: 16),
                // password input
                CustomFormField(
                  title: 'Password',
                  obscureText: true,
                ),
                SizedBox(
                  height: 8,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(padding: EdgeInsets.zero),
                    child: Text(
                      'Forgot Password',
                      style: blueTS.copyWith(
                        fontWeight: regular,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                CustomFilledButton(
                  title: 'Sign In',
                  width: double.infinity,
                  onPressed: () {
                    Navigator.pushNamed(context, '/sign-in-pin');
                  },
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          CustomTextButton(
            title: 'Create New Account',
            width: 165,
            onPressed: () {
              Navigator.pushNamed(context, '/sign-up');
            },
          ),
        ],
      ),
    );
  }
}
