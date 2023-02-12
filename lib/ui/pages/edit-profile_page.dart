import 'package:bank_sha/shared/theme.dart';
import 'package:flutter/material.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        children: [],
      ),
    );
  }
}
