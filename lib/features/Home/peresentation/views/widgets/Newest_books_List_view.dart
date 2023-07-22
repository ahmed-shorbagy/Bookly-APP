import 'package:bookly_app/features/Home/peresentation/manager/newet_books_cubit/newest_books_cubit.dart';
import 'package:bookly_app/features/Home/peresentation/views/widgets/custom_circular_indicator.dart';
import 'package:bookly_app/features/Home/peresentation/views/widgets/custom_err_message.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'newest_books_list_item.dart';

class NewestBooksListView extends StatelessWidget {
  const NewestBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: NewestBooksListITem(book: state.books[index]),
              );
            },
            itemCount: state.books.length,
          );
        } else if (state is NewestBooksFaluire) {
          return CustomErrText(errMessage: state.errMessage);
        } else {
          return const CustomProgressIndicator();
        }
      },
    );
  }
}
