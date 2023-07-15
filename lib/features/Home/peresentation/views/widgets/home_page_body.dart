import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'custom_app_bar.dart';
import 'featured_horizontal_list.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAppBar(),
          const FeaturedHorizontalList(),
          const SizedBox(
            height: 51,
          ),
          Text(
            'Best Seller',
            style: Styles.textStyle18
                .copyWith(fontFamily: GoogleFonts.montserrat.toString()),
          )
        ],
      ),
    );
  }
}
