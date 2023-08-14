import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  String? buttonText;
  final Function onPressed;
  Button({
    this.buttonText,
    required this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 380,
      height: 55,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(19),
        color: Color(0xff53B175),
      ),
      child: Center(
          child: Text(
        buttonText!,
        style: TextStyle(color: Colors.white),
      )), // Replace with your desired color
    );
  }
}
