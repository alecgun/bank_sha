// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:bank_sha/shared/theme.dart';
import 'package:flutter/material.dart';

class CustomFilledButton extends StatelessWidget {
  final String title;
  final double width;
  final double height;
  final VoidCallback? onPressed;

  const CustomFilledButton({
    Key? key,
    required this.title,
    this.width = 0,
    this.height = 50,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: 50,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: purpleClr,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(56),
          ),
        ),
        child: Text(
          title,
          style: whiteTS.copyWith(
            fontWeight: semibold,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}

class CustomTextButton extends StatelessWidget {
  final String title;
  final double width;
  final double height;
  final VoidCallback? onPressed;

  const CustomTextButton({
    Key? key,
    required this.title,
    this.width = 0,
    this.height = 24,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: 24,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(padding: EdgeInsets.zero),
        child: Text(
          title,
          style: greyTS.copyWith(
            fontWeight: regular,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}

class CustomPinButton extends StatelessWidget {
  final String title;
  final VoidCallback? onTap;

  const CustomPinButton({Key? key, required this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: numberBgClr,
        ),
        child: Center(
          child: Text(
            title,
            style: whiteTS.copyWith(fontSize: 22, fontWeight: semibold),
          ),
        ),
      ),
    );
  }
}

class CustomActivityButton extends StatelessWidget {
  final String iconUrl;
  final String title;
  final VoidCallback? onTap;

  const CustomActivityButton(
      {Key? key, required this.iconUrl, required this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            width: 70,
            height: 70,
            margin: EdgeInsets.only(bottom: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: whiteClr,
            ),
            child: Center(
              child: Image.asset(
                iconUrl,
                width: 26,
              ),
            ),
          ),
          Text(
            title,
            style: blackTS.copyWith(fontWeight: medium, fontSize: 14),
          )
        ],
      ),
    );
  }
}

class ItemProfilePage extends StatelessWidget {
  final String title;
  final String iconUrl;
  final VoidCallback? onTap;
  const ItemProfilePage(
      {Key? key, required this.title, required this.iconUrl, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 8),
        padding: EdgeInsets.all(8),
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              iconUrl,
              width: 24,
            ),
            SizedBox(
              width: 18,
            ),
            Text(
              title,
              style: blackTS.copyWith(
                fontSize: 14,
                fontWeight: semibold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
