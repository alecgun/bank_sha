// ignore_for_file: prefer_const_constructors

import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/widgets/buttons.dart';
import 'package:bank_sha/widgets/forms.dart';
import 'package:flutter/material.dart';

class EditPinPage extends StatelessWidget {
  const EditPinPage({super.key});

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
                CustomFormField(
                  title: 'Old PIN',
                  obscureText: true,
                ),
                SizedBox(
                  height: 16,
                ),
                CustomFormField(
                  title: 'New PIN',
                  obscureText: true,
                ),
                SizedBox(
                  height: 30,
                ),
                CustomFilledButton(
                  title: 'Update Now',
                  width: double.infinity,
                  onPressed: () {
                    Navigator.pushNamed(context, '/profile-edit-success');
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
