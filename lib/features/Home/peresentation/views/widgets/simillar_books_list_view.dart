import 'package:bookly_app/features/Home/peresentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly_app/features/Home/peresentation/views/widgets/custom_circular_indicator.dart';
import 'package:bookly_app/features/Home/peresentation/views/widgets/custom_err_message.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/size_config.dart';
import 'featured_list_item.dart';

class SimillarBooksListView extends StatelessWidget {
  const SimillarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return SizedBox(
            height: SizeConfig.defaultSize! * 15,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return const CustomBookImage(
                  imageUrl: 'https://loremflickr.com/640/360',
                );
              },
            ),
          );
        } else if (state is SimilarBooksFaluire) {
          return CustomErrText(errMessage: state.errMessage);
        } else {
          return const CustomProgressIndicator();
        }
      },
    );
  }
}
