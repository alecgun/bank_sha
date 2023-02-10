// ignore_for_file: prefer_const_constructors

import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/widgets/buttons.dart';
import 'package:flutter/material.dart';

class PinPage extends StatefulWidget {
  const PinPage({super.key});

  @override
  State<PinPage> createState() => _PinPageState();
}

class _PinPageState extends State<PinPage> {
  final TextEditingController pinController = TextEditingController(text: '');

  addPin(String number) {
    if (pinController.text.length < 6) {
      setState(() {
        pinController.text = pinController.text + number;
      });
    }
  }

  deletePin() {
    if (pinController.text.isNotEmpty) {
      setState(() {
        pinController.text =
            pinController.text.substring(0, pinController.text.length - 1);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBgClr,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 58),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Sha PIN',
                style: whiteTS.copyWith(fontWeight: semibold, fontSize: 20),
              ),
              SizedBox(
                height: 72,
              ),
              SizedBox(
                width: 200,
                child: TextFormField(
                  controller: pinController,
                  obscureText: true,
                  enabled: false,
                  style: whiteTS.copyWith(
                      fontSize: 36, fontWeight: medium, letterSpacing: 16),
                  obscuringCharacter: '*',
                  decoration: InputDecoration(
                    disabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: greyClr)),
                  ),
                ),
              ),
              SizedBox(
                height: 66,
              ),
              Wrap(
                spacing: 40,
                runSpacing: 40,
                children: [
                  CustomPinButton(
                    title: '1',
                    onTap: () {
                      addPin('1');
                    },
                  ),
                  CustomPinButton(
                    title: '2',
                    onTap: () {
                      addPin('2');
                    },
                  ),
                  CustomPinButton(
                    title: '3',
                    onTap: () {
                      addPin('3');
                    },
                  ),
                  CustomPinButton(
                    title: '4',
                    onTap: () {
                      addPin('4');
                    },
                  ),
                  CustomPinButton(
                    title: '5',
                    onTap: () {
                      addPin('5');
                    },
                  ),
                  CustomPinButton(
                    title: '6',
                    onTap: () {
                      addPin('6');
                    },
                  ),
                  CustomPinButton(
                    title: '7',
                    onTap: () {
                      addPin('7');
                    },
                  ),
                  CustomPinButton(
                    title: '8',
                    onTap: () {
                      addPin('8');
                    },
                  ),
                  CustomPinButton(
                    title: '9',
                    onTap: () {
                      addPin('9');
                    },
                  ),
                  SizedBox(
                    height: 60,
                    width: 60,
                  ),
                  CustomPinButton(
                    title: '0',
                    onTap: () {
                      addPin('9');
                    },
                  ),
                  GestureDetector(
                    onTap: () {
                      deletePin();
                    },
                    child: Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: numberBgClr,
                      ),
                      child: Center(
                        child: Icon(
                          Icons.arrow_back,
                          color: whiteClr,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
