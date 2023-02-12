// ignore_for_file: prefer_const_constructors

import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/widgets/buttons.dart';
import 'package:bank_sha/widgets/forms.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

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
              'Join Us to Unlock\nYour Growth',
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
                // full name input
                CustomFormField(title: 'Full Name'),
                SizedBox(height: 16),
                // email input
                CustomFormField(title: 'Email Address'),
                SizedBox(height: 16),
                // password input
                CustomFormField(
                  title: 'Password',
                  obscureText: true,
                ),
                SizedBox(
                  height: 30,
                ),
                CustomFilledButton(
                  title: 'Continue',
                  width: double.infinity,
                  onPressed: () {
                    Navigator.pushNamed(context, '/sign-up-profile');
                  },
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          CustomTextButton(
            title: 'Sign In',
            width: 52,
            onPressed: () {
              Navigator.popAndPushNamed(context, '/sign-in');
            },
          ),
        ],
      ),
    );
  }
}
