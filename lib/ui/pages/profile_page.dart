// ignore_for_file: prefer_const_constructors

import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/widgets/buttons.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        iconTheme: IconThemeData(color: blackClr),
        backgroundColor: lighBgClr,
        title: Text(
          'Profile',
          style: blackTS.copyWith(
            fontSize: 20,
            fontWeight: semibold,
          ),
        ),
      ),
      backgroundColor: lighBgClr,
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(22),
            margin: EdgeInsets.only(top: 40, left: 24, right: 24),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: whiteClr,
            ),
            child: Column(
              children: [
                Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/images/ic_profpic.png'),
                    ),
                  ),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: whiteClr),
                      child: Center(
                        child: Icon(
                          Icons.check_circle,
                          color: greenClr,
                          size: 28,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  'Shayna Hanna',
                  style: blackTS.copyWith(fontWeight: semibold, fontSize: 18),
                ),
                SizedBox(
                  height: 40,
                ),
                ItemProfilePage(
                  title: 'Edit Profile',
                  iconUrl: 'assets/images/ic_edit-profile.png',
                  onTap: () {},
                ),
                ItemProfilePage(
                  title: 'My PIN',
                  iconUrl: 'assets/images/ic_my-pin.png',
                  onTap: () {
                    Navigator.pushNamed(context, '/pin');
                  },
                ),
                ItemProfilePage(
                  title: 'Wallet Settings',
                  iconUrl: 'assets/images/ic_wallet-setting.png',
                  onTap: () {},
                ),
                ItemProfilePage(
                  title: 'My Rewards',
                  iconUrl: 'assets/images/ic_my-rewards.png',
                  onTap: () {},
                ),
                ItemProfilePage(
                  title: 'Help Center',
                  iconUrl: 'assets/images/ic_help-center.png',
                  onTap: () {},
                ),
                ItemProfilePage(
                  title: 'Log Out',
                  iconUrl: 'assets/images/ic_log-out.png',
                  onTap: () {},
                ),
              ],
            ),
          ),
          SizedBox(
            height: 100,
          ),
          CustomTextButton(title: 'Report a Problem'),
        ],
      ),
    );
  }
}
