import 'package:bookly_app/features/Home/peresentation/views/widgets/rating.dart';
import 'package:flutter/cupertino.dart';

import '../../../../../core/utils/size_config.dart';
import '../../../../../core/utils/styles.dart';
import 'books_action.dart';
import 'custom_book_details_view_app_bar.dart';
import 'featured_list_item.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: CustomBookDetailsViewAppBar(),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.defaultSize! * 11, vertical: 25),
          child: const FeaturedHorizontalListItem(),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          'The Jungle Book',
          style: Styles.textStyle30,
        ),
        const SizedBox(
          height: 6,
        ),
        const Opacity(
          opacity: .7,
          child: Text(
            'Rudyard Kipling',
            style: Styles.textStyle18,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 37,
        ),
        const BooksAction(),
      ],
    );
  }
}
