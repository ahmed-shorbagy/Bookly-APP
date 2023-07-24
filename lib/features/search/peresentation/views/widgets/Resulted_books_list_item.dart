import 'package:bookly_app/features/Home/data/Models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_router.dart';
import '../../../../../core/utils/size_config.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../Home/peresentation/views/widgets/featured_list_item.dart';
import '../../../../Home/peresentation/views/widgets/rating.dart';

class ResultedBookseListItem extends StatelessWidget {
  const ResultedBookseListItem({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetailsView, extra: book);
      },
      child: SizedBox(
        height: 125,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
                aspectRatio: 3.2 / 4,
                child: CustomBookImage(
                  book: book,
                  imageUrl: (book.volumeInfo?.imageLinks?.thumbnail) ??
                      'https://loremflickr.com/640/360',
                )),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: SizeConfig.screenwidth! * .6,
                    child: Text(book.volumeInfo!.title!,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: Styles.textStyle18),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Opacity(
                    opacity: .7,
                    child: SizedBox(
                      width: SizeConfig.screenwidth! * .4,
                      child: Text(
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        (book.volumeInfo?.authors?[0]) ?? 'UnKnown',
                        style: Styles.textStyle14,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Free !',
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
      ),
    );
  }
}
