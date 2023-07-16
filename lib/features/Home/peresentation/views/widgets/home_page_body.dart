import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/size_config.dart';
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
          ),
          const SizedBox(
            height: 20,
          ),
          BestSellerListITem()
        ],
      ),
    );
  }
}

class BestSellerListITem extends StatelessWidget {
  const BestSellerListITem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(AssetsData.testPhoto))),
            ),
          ),
          SizedBox(
            width: 30,
          ),
          Column(
            children: [
              SizedBox(
                width: SizeConfig.screenwidth! * .6,
                child: Text('Harry Potter and the Goblet of Fire',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: Styles.textStyle20),
              )
            ],
          )
        ],
      ),
    );
  }
}
