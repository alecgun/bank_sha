// ignore_for_file: prefer_const_constructors

import 'package:bank_sha/shared/theme.dart';
import 'package:flutter/material.dart';

class ContactList extends StatelessWidget {
  final String ppUrl;
  final String name;
  final VoidCallback? onTap;

  const ContactList(
      {Key? key, required this.name, required this.ppUrl, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 90,
        height: 120,
        margin: EdgeInsets.only(right: 17),
        decoration: BoxDecoration(
          color: whiteClr,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              ppUrl,
              width: 45,
            ),
            Text(
              name,
              style: blackTS.copyWith(
                fontSize: 12,
                fontWeight: medium,
              ),
            )
          ],
        ),
      ),
    );
  }
}
