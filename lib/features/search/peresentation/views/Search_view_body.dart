import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/search/peresentation/views/widgets/custom_text_search_field.dart';
import 'package:bookly_app/features/search/peresentation/views/widgets/search_result_list_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../manager/cubit/result_books_cubit.dart';

class SearchViewBody extends StatefulWidget {
  const SearchViewBody({super.key});

  @override
  State<SearchViewBody> createState() => _SearchViewBodyState();
}

class _SearchViewBodyState extends State<SearchViewBody> {
  late String bookName; // Move the declaration inside the state class

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(12),
          child: CustomTextSearchField(
            onSubmitted: (data) {
              setState(() {
                bookName = data;
              });
              BlocProvider.of<ResultBooksCubit>(context)
                  .fetchSearchedBooks(bookName: bookName);
            },
            onChanged: (data) {
              setState(() {
                bookName = data;
              });
            },
            onSearchIconPressed: () {
              BlocProvider.of<ResultBooksCubit>(context)
                  .fetchSearchedBooks(bookName: bookName);
            },
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        const Padding(
          padding: EdgeInsets.all(12),
          child: Text(
            'Result',
            style: Styles.textStyle18,
          ),
        ),
        const Expanded(
          child: Padding(
            padding: EdgeInsets.all(12),
            child: SearchResultListVIew(),
          ),
        )
      ],
    );
  }
}
