import 'package:bookly_app/features/Home/data/Models/book_model/book_model.dart';
import 'package:bookly_app/features/Home/peresentation/views/widgets/rating.dart';
import 'package:flutter/cupertino.dart';

import '../../../../../core/utils/size_config.dart';
import '../../../../../core/utils/styles.dart';
import 'books_action.dart';

import 'featured_list_item.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.defaultSize! * 11, vertical: 25),
          child: CustomBookImage(
              book: book, imageUrl: book.volumeInfo!.imageLinks!.thumbnail!),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          book.volumeInfo!.title!,
          style: Styles.textStyle30,
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 6,
        ),
        Opacity(
          opacity: .7,
          child: Text(
            book.volumeInfo!.authors?[0] ?? '',
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
