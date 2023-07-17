import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.backGroundColor,
      required this.text,
      required this.borderRadius});
  final Color backGroundColor;

  final Text text;
  final BorderRadiusGeometry borderRadius;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: () {},
        child: text,
        style: TextButton.styleFrom(
          backgroundColor: backGroundColor,
          shape: RoundedRectangleBorder(borderRadius: borderRadius),
        ),
      ),
    );
  }
}
