import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.backGroundColor,
      required this.text,
      required this.borderRadius,
      this.onPressed});
  final Color backGroundColor;
  final void Function()? onPressed;
  final Text text;
  final BorderRadiusGeometry borderRadius;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: backGroundColor,
          shape: RoundedRectangleBorder(borderRadius: borderRadius),
        ),
        child: text,
      ),
    );
  }
}
