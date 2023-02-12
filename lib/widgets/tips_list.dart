// ignore_for_file: prefer_const_constructors

import 'package:bank_sha/shared/theme.dart';
import 'package:flutter/material.dart';

class TipsList extends StatelessWidget {
  final String title;
  final String imgUrl;
  final VoidCallback? onTap;

  const TipsList({
    Key? key,
    required this.title,
    required this.imgUrl,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 155,
      height: 190,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: whiteClr,
      ),
      child: Column(
        children: [
          Container(
            height: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              image:
                  DecorationImage(image: AssetImage(imgUrl), fit: BoxFit.cover),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Text(
              title,
              style: blackTS.copyWith(
                fontSize: 14,
                fontWeight: medium,
              ),
            ),
          )
        ],
      ),
    );
  }
}
