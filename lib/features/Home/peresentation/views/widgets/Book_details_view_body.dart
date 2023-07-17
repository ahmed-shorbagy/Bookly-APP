import 'package:bookly_app/features/Home/peresentation/views/widgets/custom_book_details_view_app_bar.dart';
import 'package:bookly_app/features/Home/peresentation/views/widgets/simiilar_books_section.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'book_details_section.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SafeArea(
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
                    BookDetailsSection(),
                    Expanded(
                      child: SizedBox(
                        height: 50,
                      ),
                    ),
                    SimillarBooksSection()
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
