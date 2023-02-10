// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../shared/theme.dart';

class CustomFormField extends StatelessWidget {
  final String title;
  final bool obscureText;
  final TextEditingController? editingController;

  const CustomFormField(
      {Key? key,
      required this.title,
      this.obscureText = false,
      this.editingController});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: blackTS.copyWith(
            fontSize: 14,
            fontWeight: medium,
          ),
        ),
        SizedBox(height: 8),
        TextFormField(
          obscureText: obscureText,
          controller: editingController,
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(14)),
            contentPadding: EdgeInsets.all(12),
          ),
        )
      ],
    );
  }
}
