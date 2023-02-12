import 'package:bank_sha/shared/theme.dart';
import 'package:flutter/material.dart';

class BankList extends StatelessWidget {
  final String bankName;
  final String iconUrl;
  final VoidCallback? onTap;
  const BankList({
    Key? key,
    required this.bankName,
    required this.iconUrl,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 9),
      padding: EdgeInsets.all(22),
      decoration: BoxDecoration(
        color: whiteClr,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            iconUrl,
            height: 30,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                bankName,
                style: blackTS.copyWith(
                  fontSize: 16,
                  fontWeight: semibold,
                ),
              ),
              Text(
                '50 mins',
                style: greyTS.copyWith(
                  fontSize: 12,
                  fontWeight: regular,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
