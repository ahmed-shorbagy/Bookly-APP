import 'package:bookly_app/features/Home/peresentation/views/widgets/rating.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/size_config.dart';
import '../../../../../core/utils/styles.dart';

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
                  image: const DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(AssetsData.testPhoto))),
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: SizeConfig.screenwidth! * .6,
                  child: Text('Harry Potter and the Goblet of Fire',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: Styles.textStyle20),
                ),
                const SizedBox(
                  height: 3,
                ),
                const Opacity(
                  opacity: .7,
                  child: Text(
                    'J.K. Rowling',
                    style: Styles.textStyle14,
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '19.99 €',
                      style: Styles.textStyle20,
                    ),
                    const BookRating()
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
