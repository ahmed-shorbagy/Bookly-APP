import 'package:bookly_app/features/Home/data/Models/book_model/book_model.dart';
import 'package:flutter/material.dart';

import '../../../../../core/functions/url _launcher.dart';
import '../../../../../core/utils/styles.dart';
import 'custom_button.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              backGroundColor: Colors.white,
              text: Text(
                'Free',
                style: Styles.textStyle18
                    .copyWith(color: Colors.black, fontWeight: FontWeight.w900),
              ),
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(16),
                  topLeft: Radius.circular(16)),
            ),
          ),
          Expanded(
            child: CustomButton(
              onPressed: () async {
                await customUrlLauncher(url: book.accessInfo!.webReaderLink!);
              },
              backGroundColor: const Color(0xffEF8262),
              text: Text(
                'Free preview',
                style: Styles.textStyle16
                    .copyWith(color: Colors.white, fontWeight: FontWeight.w600),
              ),
              borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(16),
                  topRight: Radius.circular(16)),
            ),
          ),
        ],
      ),
    );
  }
}
