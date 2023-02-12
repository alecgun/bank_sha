// ignore_for_file: prefer_const_constructors

import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/widgets/bank_list.dart';
import 'package:bank_sha/widgets/buttons.dart';
import 'package:flutter/material.dart';

class TopUpPage extends StatelessWidget {
  const TopUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        iconTheme: IconThemeData(color: blackClr),
        backgroundColor: lighBgClr,
        title: Text(
          'Top Up',
          style: blackTS.copyWith(
            fontSize: 20,
            fontWeight: semibold,
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 24),
        children: [
          walletSection(),
          bankSection(),
          SizedBox(
            height: 30,
          ),
          CustomFilledButton(
            title: 'Continue',
            width: double.infinity,
          ),
        ],
      ),
    );
  }

  Widget walletSection() {
    return Container(
      margin: EdgeInsets.only(top: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Wallet',
            style: blackTS.copyWith(
              fontSize: 16,
              fontWeight: semibold,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Image.asset(
                'assets/images/ic_wallet.png',
                width: 80,
              ),
              SizedBox(
                width: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '8008 2208 1996',
                    style: blackTS.copyWith(
                      fontWeight: semibold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    'Shayna Hanna',
                    style: greyTS.copyWith(
                      fontSize: 12,
                      fontWeight: medium,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget bankSection() {
    return Container(
      margin: EdgeInsets.only(top: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Select Bank',
            style: blackTS.copyWith(
              fontWeight: semibold,
              fontSize: 16,
            ),
          ),
          SizedBox(
            height: 9,
          ),
          BankList(bankName: 'BANK BCA', iconUrl: 'assets/images/ic_bca.png'),
          BankList(bankName: 'BANK BCA', iconUrl: 'assets/images/ic_bca.png'),
          BankList(bankName: 'BANK BCA', iconUrl: 'assets/images/ic_bca.png'),
          BankList(bankName: 'BANK BCA', iconUrl: 'assets/images/ic_bca.png'),
        ],
      ),
    );
  }
}
