import 'package:bookly_app/features/Home/peresentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/features/Home/peresentation/views/widgets/custom_circular_indicator.dart';
import 'package:bookly_app/features/Home/peresentation/views/widgets/custom_err_message.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/utils/size_config.dart';
import 'featured_list_item.dart';

class FeaturedHorizontalList extends StatelessWidget {
  const FeaturedHorizontalList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 47,
      ),
      child: BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
        builder: (context, state) {
          if (state is FeaturedBooksSuccess) {
            return SizedBox(
              height: SizeConfig.defaultSize! * 22,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: state.books.length,
                itemBuilder: (context, index) {
                  return CustomBookImage(
                    book: state.books[index],
                    imageUrl: (state
                            .books[index].volumeInfo?.imageLinks?.thumbnail) ??
                        'https://loremflickr.com/640/360',
                  );
                },
              ),
            );
          } else if (state is FeaturedBooksFaluire) {
            return CustomErrText(errMessage: state.errMessage);
          } else {
            return const CustomProgressIndicator();
          }
        },
      ),
    );
  }
}
