import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/size_config.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custom_app_bar.dart';
import 'featured_list_item.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [CustomAppBar(), FeaturedHorizontalList()],
    );
  }
}

class FeaturedHorizontalList extends StatelessWidget {
  const FeaturedHorizontalList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50, left: 16),
      child: SizedBox(
        height: SizeConfig.defaultSize! * 22,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, index) {
            return FeaturedHorizontalListItem();
          },
        ),
      ),
    );
  }
}
