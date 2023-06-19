import 'package:flutter/material.dart';

class SubmitButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  const SubmitButton({Key? key, required this.onPressed, required this.title})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 50,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(20), boxShadow: [
        BoxShadow(
            color: Colors.white.withOpacity(0.25),
            blurRadius: 2,
            spreadRadius: 1) // BoxShadow
      ]), // BoxDecoration
      child: ElevatedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: BorderSide
                  .none)), // RoundedRectangleBorder backgroundColor: MaterialStateProperty.all(
        ), // ButtonStyle
        onPressed: onPressed,
        child: Text(
          title,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
