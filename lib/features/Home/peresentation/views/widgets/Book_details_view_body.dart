import 'package:bookly_app/features/Home/data/Models/book_model/book_model.dart';
import 'package:bookly_app/features/Home/peresentation/views/widgets/custom_book_details_view_app_bar.dart';
import 'package:bookly_app/features/Home/peresentation/views/widgets/simiilar_books_section.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'book_details_section.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: CustomBookDetailsViewAppBar(),
          ),
        ),
        Expanded(
            child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: SafeArea(
                child: Column(
                  children: [
                    BookDetailsSection(
                      book: book,
                    ),
                    const Expanded(
                      child: SizedBox(
                        height: 50,
                      ),
                    ),
                    const SimillarBooksSection()
                  ],
                ),
              ),
            )
          ],
        ))
      ],
    );
  }
}
