// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(
      {required this.answertext, required this.ontap, super.key});
  final String answertext;
  final void Function() ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: ontap,
      child: Container(
          height: 30,
          width: 220,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Colors.white,
          ),
          child: Center(
            child: Text(
              answertext,
              style: GoogleFonts.dmSerifText(
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                  color: Color(0xffa787da)),
            ),
          )),
    );
  }
}
