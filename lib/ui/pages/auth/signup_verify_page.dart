// ignore_for_file: prefer_const_constructors

import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/widgets/buttons.dart';
import 'package:flutter/material.dart';

class SignUpVerifyPage extends StatelessWidget {
  const SignUpVerifyPage({super.key});

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
              'Verify Your\nAccount',
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
              children: [
                Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Image.asset(
                      'assets/images/ic_upload.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  'Passport/ID Card',
                  style: blackTS.copyWith(fontWeight: medium, fontSize: 18),
                ),
                SizedBox(
                  height: 50,
                ),
                CustomFilledButton(
                  title: 'Continue',
                  width: double.infinity,
                  onPressed: () {
                    Navigator.pushNamed(context, '/sign-up-success');
                  },
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          CustomTextButton(
            title: 'Skip for now',
            width: 165,
            onPressed: () {},
          ),
        ],
      ),
    );
    ;
  }
}
