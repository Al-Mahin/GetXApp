import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  StyledText(this.text, this.fontSize, this.wght, {super.key});

  final String text;
  double fontSize;
  FontWeight wght;
  @override
  Widget build(context) {
    return Text(
      text,
      style: TextStyle(
          color: Colors.white, fontSize: fontSize, fontWeight: FontWeight.w300),
    );
  }
}
