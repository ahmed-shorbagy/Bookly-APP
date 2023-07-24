import 'package:bookly_app/features/Home/peresentation/views/widgets/custom_circular_indicator.dart';
import 'package:bookly_app/features/Home/peresentation/views/widgets/custom_err_message.dart';
import 'package:bookly_app/features/search/peresentation/views/widgets/Resulted_books_list_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../manager/cubit/result_books_cubit.dart';

class SearchResultListVIew extends StatelessWidget {
  const SearchResultListVIew({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ResultBooksCubit, ResultBooksState>(
      builder: (context, state) {
        if (state is ResultBooksSuccess) {
          return ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: ResultedBookseListItem(book: state.books[index]));
            },
            itemCount: state.books.length,
          );
        } else if (state is ResultBooksFaliure) {
          return CustomErrText(errMessage: state.errMessage);
        } else {
          return const CustomErrText(errMessage: 'Search for Books !');
        }
      },
    );
  }
}
