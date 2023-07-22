import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'Newest_books_List_view.dart';

import 'custom_app_bar.dart';
import 'featured_horizontal_list.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 30),
      child: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBar(),
                FeaturedHorizontalList(),
                SizedBox(
                  height: 51,
                ),
                Text('Newest Books', style: Styles.textStyle18),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          SliverFillRemaining(
            child: NewestBooksListView(),
          )
        ],
      ),
    );
  }
}
