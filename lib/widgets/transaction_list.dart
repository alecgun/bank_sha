// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bank_sha/shared/theme.dart';
import 'package:flutter/material.dart';

class TransactionList extends StatelessWidget {
  final String iconUrl;
  final String title;
  final String time;
  final String price;

  const TransactionList(
      {Key? key,
      required this.iconUrl,
      required this.title,
      required this.time,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 18),
      child: Row(
        children: [
          Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(iconUrl),
                ),
              )),
          SizedBox(
            width: 16,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: blackTS.copyWith(fontSize: 16, fontWeight: medium),
              ),
              Text(
                time,
                style: greyTS.copyWith(fontWeight: regular, fontSize: 12),
              ),
            ],
          ),
          Spacer(),
          Text(
            price,
            style: blackTS.copyWith(fontWeight: medium, fontSize: 16),
          ),
        ],
      ),
    );
  }
}
