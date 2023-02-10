// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/widgets/buttons.dart';
import 'package:bank_sha/widgets/contact_list.dart';
import 'package:bank_sha/widgets/transaction_list.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lighBgClr,
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                profileSection(),
                cardSection(),
                accountLevelSection(),
                activitySection(),
                transactionSection(),
              ],
            ),
          ),
          contactSection(),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: whiteClr,
        shape: CircularNotchedRectangle(),
        clipBehavior: Clip.antiAlias,
        notchMargin: 6,
        elevation: 0,
        child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            elevation: 0,
            backgroundColor: whiteClr,
            selectedItemColor: blueClr,
            unselectedItemColor: blackClr,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            selectedLabelStyle:
                blueTS.copyWith(fontSize: 10, fontWeight: medium),
            unselectedLabelStyle:
                blackTS.copyWith(fontSize: 10, fontWeight: medium),
            items: [
              BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/images/ic_overview.png',
                    width: 20,
                    color: blueClr,
                  ),
                  label: 'Overview'),
              BottomNavigationBarItem(
                  icon: Image.asset('assets/images/ic_history.png', width: 20),
                  label: 'History'),
              BottomNavigationBarItem(
                  icon: Image.asset('assets/images/ic_stat.png', width: 20),
                  label: 'Stats'),
              BottomNavigationBarItem(
                  icon: Image.asset('assets/images/ic_reward.png', width: 20),
                  label: 'Rewards'),
            ]),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        onPressed: () {},
        backgroundColor: purpleClr,
        child: Image.asset(
          'assets/images/ic_plus.png',
          width: 24,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Widget cardSection() {
    return Container(
      margin: EdgeInsets.only(top: 30),
      width: double.infinity,
      height: 220,
      padding: EdgeInsets.all(30),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(28),
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/img_bg_card.png'))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Shayna Hanna',
            style: whiteTS.copyWith(fontSize: 18, fontWeight: medium),
          ),
          SizedBox(
            height: 28,
          ),
          Text(
            '**** **** **** 1280',
            style: whiteTS.copyWith(
                fontSize: 18, fontWeight: medium, letterSpacing: 7),
          ),
          SizedBox(
            height: 21,
          ),
          Text(
            'Balance',
            style: whiteTS.copyWith(fontSize: 14, fontWeight: regular),
          ),
          Text(
            'Rp 12.500',
            style: whiteTS.copyWith(fontSize: 24, fontWeight: semibold),
          ),
        ],
      ),
    );
  }

  Widget profileSection() {
    return Container(
      margin: EdgeInsets.only(top: 40),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Howdy,',
                style: greyTS.copyWith(fontSize: 16, fontWeight: regular),
              ),
              Text(
                'shaynahan',
                style: blackTS.copyWith(fontWeight: semibold, fontSize: 20),
              ),
            ],
          ),
          Spacer(),
          Column(
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assets/images/ic_profpic.png'),
                  ),
                ),
                child: Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    width: 16,
                    height: 16,
                    decoration:
                        BoxDecoration(shape: BoxShape.circle, color: whiteClr),
                    child: Center(
                      child: Icon(
                        Icons.check_circle,
                        color: greenClr,
                        size: 14,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget accountLevelSection() {
    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.all(22),
      // width: double.infinity,
      // height: 80,
      decoration: BoxDecoration(
        color: whiteClr,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Level 1',
                style: blackTS.copyWith(fontSize: 14, fontWeight: medium),
              ),
              Spacer(),
              Text(
                '55%',
                style: greenTS.copyWith(fontSize: 14, fontWeight: semibold),
              ),
              Text(
                ' of Rp 20.000',
                style: blackTS.copyWith(fontSize: 14, fontWeight: semibold),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(55),
            child: LinearProgressIndicator(
              value: 0.55,
              minHeight: 5,
              valueColor: AlwaysStoppedAnimation(greenClr),
              backgroundColor: lighBgClr,
            ),
          )
        ],
      ),
    );
  }

  Widget activitySection() {
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Do Something',
            style: blackTS.copyWith(fontSize: 16, fontWeight: semibold),
          ),
          SizedBox(
            height: 14,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomActivityButton(
                iconUrl: 'assets/images/ic_download.png',
                title: 'Top Up',
                onTap: () {},
              ),
              CustomActivityButton(
                iconUrl: 'assets/images/ic_send.png',
                title: 'Send',
                onTap: () {},
              ),
              CustomActivityButton(
                iconUrl: 'assets/images/ic_withdraw.png',
                title: 'Withdraw',
                onTap: () {},
              ),
              CustomActivityButton(
                iconUrl: 'assets/images/ic_more.png',
                title: 'More',
                onTap: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget transactionSection() {
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Latest Transactions',
            style: blackTS.copyWith(fontSize: 16, fontWeight: semibold),
          ),
          SizedBox(
            height: 14,
          ),
          Container(
            decoration: BoxDecoration(
              color: whiteClr,
              borderRadius: BorderRadius.circular(20),
            ),
            padding: EdgeInsets.all(22),
            child: Column(
              children: [
                TransactionList(
                    iconUrl: 'assets/images/ic_topup.png',
                    title: 'Top Up',
                    time: 'Yesterday',
                    price: '+ 450.000'),
                TransactionList(
                    iconUrl: 'assets/images/ic_cashback.png',
                    title: 'Cashback',
                    time: 'Sep 11',
                    price: '+ 22.000'),
                TransactionList(
                    iconUrl: 'assets/images/ic_withdraw_mini.png',
                    title: 'Withdraw',
                    time: 'Yesterday',
                    price: '- 5.000'),
                TransactionList(
                    iconUrl: 'assets/images/ic_transfer.png',
                    title: 'Transfer',
                    time: 'Yesterday',
                    price: '- 123.500'),
                TransactionList(
                    iconUrl: 'assets/images/ic_shopping.png',
                    title: 'Electric',
                    time: 'Feb 18',
                    price: '- 12.300.000'),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget contactSection() {
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              'Send Again',
              style: blackTS.copyWith(fontSize: 16, fontWeight: semibold),
            ),
          ),
          SizedBox(
            height: 14,
          ),
          Container(
            height: 120,
            child: ListView(
              padding: EdgeInsets.only(left: 24),
              scrollDirection: Axis.horizontal,
              children: [
                ContactList(
                  name: '@yuanita',
                  ppUrl: 'assets/images/ic_profpic.png',
                  onTap: () {},
                ),
                ContactList(
                  name: '@jani',
                  ppUrl: 'assets/images/ic_profpic.png',
                  onTap: () {},
                ),
                ContactList(
                  name: '@urip',
                  ppUrl: 'assets/images/ic_profpic.png',
                  onTap: () {},
                ),
                ContactList(
                  name: '@urip',
                  ppUrl: 'assets/images/ic_profpic.png',
                  onTap: () {},
                ),
                ContactList(
                  name: '@urip',
                  ppUrl: 'assets/images/ic_profpic.png',
                  onTap: () {},
                ),
                ContactList(
                  name: '@urip',
                  ppUrl: 'assets/images/ic_profpic.png',
                  onTap: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
