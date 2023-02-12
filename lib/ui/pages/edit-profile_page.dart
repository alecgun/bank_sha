// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/widgets/buttons.dart';
import 'package:bank_sha/widgets/forms.dart';
import 'package:flutter/material.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lighBgClr,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        iconTheme: IconThemeData(color: blackClr),
        backgroundColor: lighBgClr,
        title: Text(
          'Edit Profile',
          style: blackTS.copyWith(
            fontSize: 20,
            fontWeight: semibold,
          ),
        ),
      ),
      body: ListView(
        children: [
          Container(
            width: double.infinity,
            margin: EdgeInsets.all(24),
            padding: EdgeInsets.all(22),
            decoration: BoxDecoration(
              color: whiteClr,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                CustomFormField(title: 'Username'),
                SizedBox(
                  height: 16,
                ),
                CustomFormField(title: 'Full Name'),
                SizedBox(
                  height: 16,
                ),
                CustomFormField(title: 'Email Address'),
                SizedBox(
                  height: 16,
                ),
                CustomFormField(
                  title: 'Password',
                  obscureText: true,
                ),
                SizedBox(
                  height: 30,
                ),
                CustomFilledButton(
                  title: 'Update Now',
                  width: double.infinity,
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
