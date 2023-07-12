import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(AssetsData.logo),
        SizedBox(
          height: 12,
        ),
        Text(
          textAlign: TextAlign.center,
          'Explore a Whole Free Amazing Books',
          style: TextStyle(fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}
