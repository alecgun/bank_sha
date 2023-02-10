// ignore_for_file: prefer_const_constructors

import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/widgets/buttons.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class OnboardPage extends StatefulWidget {
  const OnboardPage({super.key});

  @override
  State<OnboardPage> createState() => _OnboardPageState();
}

class _OnboardPageState extends State<OnboardPage> {
  int currentIndex = 0;

  CarouselController carouselController = CarouselController();

  List<String> titles = [
    'Grow Your\nFinancial Today',
    'Build From\nZero to Freedom',
    'Start Together',
  ];

  List<String> subtitles = [
    'Our system is helping you to\nachieve a better goal',
    'We provide tips for you so that\nyou can adapt easier',
    'We will guide you to where\nyou wanted it too',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lighBgClr,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 85,
            ),
            CarouselSlider(
              items: [
                Image.asset('assets/images/img_onboard1.png', height: 331),
                Image.asset('assets/images/img_onboard2.png', height: 331),
                Image.asset('assets/images/img_onboard3.png', height: 331),
              ],
              options: CarouselOptions(
                height: 331,
                viewportFraction: 1,
                enableInfiniteScroll: false,
                onPageChanged: ((index, reason) {
                  setState(() {
                    currentIndex = index;
                  });
                }),
              ),
              carouselController: carouselController,
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 24),
              padding: EdgeInsets.symmetric(horizontal: 22, vertical: 24),
              decoration: BoxDecoration(
                color: whiteClr,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Text(
                    titles[currentIndex],
                    style: blackTS.copyWith(
                      fontWeight: semibold,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 26,
                  ),
                  Text(
                    subtitles[currentIndex],
                    style: greyTS.copyWith(
                      fontSize: 16,
                      fontWeight: regular,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: currentIndex == 2 ? 38 : 50,
                  ),
                  currentIndex == 2
                      ? Column(
                          children: [
                            CustomFilledButton(
                              title: 'Get Started',
                              width: double.infinity,
                              onPressed: () {
                                Navigator.pushNamed(context, '/sign-up');
                              },
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            CustomTextButton(
                              title: 'Sign In',
                              width: 53,
                              onPressed: () {
                                Navigator.pushNamed(context, '/sign-in');
                              },
                            ),
                          ],
                        )
                      : Row(
                          children: [
                            Container(
                              width: 12,
                              height: 12,
                              margin: EdgeInsets.only(right: 10),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: currentIndex == 0 ? blueClr : lighBgClr,
                              ),
                            ),
                            Container(
                              width: 12,
                              height: 12,
                              margin: EdgeInsets.only(right: 10),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: currentIndex == 1 ? blueClr : lighBgClr,
                              ),
                            ),
                            Container(
                              width: 12,
                              height: 12,
                              margin: EdgeInsets.only(right: 10),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: currentIndex == 2 ? blueClr : lighBgClr,
                              ),
                            ),
                            Spacer(),
                            CustomFilledButton(
                              title: 'Continue',
                              width: 150,
                              onPressed: () {
                                carouselController.nextPage();
                              },
                            ),
                          ],
                        ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
